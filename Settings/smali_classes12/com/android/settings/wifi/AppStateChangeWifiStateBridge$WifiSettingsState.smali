.class public Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;
.super Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
.source "AppStateChangeWifiStateBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiSettingsState"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    .locals 2
    .param p1, "permissionState"    # Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    .line 72
    iget-object v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 73
    iget-object v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 74
    iget v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    iput v0, p0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->appOpMode:I

    .line 75
    iget-boolean v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->permissionDeclared:Z

    .line 76
    iget-boolean v0, p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;->staticPermissionGranted:Z

    .line 77
    return-void
.end method
