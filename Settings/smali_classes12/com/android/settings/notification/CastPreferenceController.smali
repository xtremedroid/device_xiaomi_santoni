.class public Lcom/android/settings/notification/CastPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "CastPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_WIFI_DISPLAY:Ljava/lang/String; = "wifi_display"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "wifi_display"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 40
    const/4 v0, 0x1

    return v0
.end method
