.class public Lcom/android/settings/deviceinfo/BluetoothAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;
.source "BluetoothAddressPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 32
    return-void
.end method
