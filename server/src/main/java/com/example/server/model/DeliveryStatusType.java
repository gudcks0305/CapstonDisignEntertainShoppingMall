package com.example.server.model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum DeliveryStatusType {
    STATUS_TYPE_WAIT("STATUS_TYPE_WAIT", "배송준비중"),
    STATUS_TYPE_DELIVERY("STATUS_TYPE_DELIVERY", "배송중"),
    STATUS_TYPE_DELIVERY_COMPLETE("STATUS_TYPE_DELIVERY_COMPLETE", "배송완료"),
    STATUS_TYPE_CANCEL("STATUS_TYPE_CANCEL", "취소"),
    STATUS_TYPE_REFUND("STATUS_TYPE_REFUND", "환불"),
    STATUS_TYPE_SUCCESS("STATUS_TYPE_SUCCESS", "구매확정");
    private final String code;
    private final String displayName;



}

