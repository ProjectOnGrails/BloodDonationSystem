package com.BloodDonationSystem

enum Status {
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