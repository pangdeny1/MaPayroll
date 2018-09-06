<?php

namespace App;

use SimpleXMLElement;

class SmsNotification
{
    protected $apiKey;

    protected $username;

    protected $password;

    protected $senderName;

    protected $callbackUrl;

    protected $urlApiDomain;

    public function __construct($config)
    {
        $this->urlApiDomain = $config["url_api_domain"];
        $this->apiKey       = $config["api_key"];
        $this->apiKey       = $config["api_key"];
        $this->username     = $config["username"];
        $this->password     = $config["password"];
        $this->senderName   = $config["sender_name"];
        $this->callbackUrl  = $config["callback_url"];
    }

    public function send($receiver, $body)
    {
        $channel = curl_init();

        curl_setopt($channel, CURLOPT_URL, $this->urlApiDomain);
        curl_setopt($channel, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($channel, CURLOPT_TIMEOUT, 4);
        curl_setopt($channel, CURLOPT_POST, 1);
        curl_setopt($channel, CURLOPT_POSTFIELDS, [
            'messageXML' => $this->renderXml($receiver, $body)
        ]);

        return curl_exec($channel);
    }

    public function body($receiver, $content)
    {
        return [
            "Authentication" => [
                "Sendername" => $this->senderName,
                "Username" => $this->username,
                "Password" => $this->password,
                "Apikey" => $this->apiKey
            ],
            "Message" => [
                "Content" => $content,
                "Receivers" => ["Receiver" => $receiver],
                "Callbackurl" => $this->callbackUrl
            ]
        ];
    }

    public function renderXml($receiver, $content)
    {
        header ("Content-Type:text/xml");

        $node = new SimpleXMLElement("<Broadcast/>");

        $this->convertToXml($this->body($receiver, $content), $node);

        return $node->asXML();
    }

    public function convertToXml($data, $node)
    {
        foreach ($data as $key => $value) {
            if (is_array($value)) {
                $this->convertToXml($value, $node->addChild($key));
            } else {
                $node->addChild($key, $value);
            }
        }
    }
}