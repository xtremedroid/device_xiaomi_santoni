.class Lcom/oneplus/settings/receiver/SettingsReceiver$2;
.super Ljava/lang/Object;
.source "SettingsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/receiver/SettingsReceiver;->setBluetoothScanMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/receiver/SettingsReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .line 264
    iput-object p1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$2;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 268
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 269
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_oneplus_devicename"

    .line 268
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "mDeviceName":Ljava/lang/String;
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 271
    .local v1, "mLocalManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    .line 272
    .local v2, "mLocalAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_default_scan_mode"

    const/16 v5, 0x17

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 274
    .local v3, "scanmode":I
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 275
    const-string v4, "SettingsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bluetooth scan mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 278
    const-string v4, "oneplus_bluetooth_scan_mode_flag"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPPrefUtil;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "mDeviceName":Ljava/lang/String;
    .end local v1    # "mLocalManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .end local v2    # "mLocalAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .end local v3    # "scanmode":I
    :cond_0
    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
