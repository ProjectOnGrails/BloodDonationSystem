package com.BloodDonationSystem

enum Status {
    REQUEST("Requested"),
    RESERVED("Reserved"),
    DISPATCH("Dispatched")

    final String value

    Status(String value) {
        this.value = value
    }

    String toString() {
        value
    }
}