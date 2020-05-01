#!/bin/bash

date >> /tmp/nft-status
(systemctl is-active nftables && echo "is-active" || echo "isn't-active") >> /tmp/nft-status
(systemctl is-failed nftables && echo "is-failed" || echo "isn't-failed") >> /tmp/nft-status
systemctl status nftables >> /tmp/nft-status
