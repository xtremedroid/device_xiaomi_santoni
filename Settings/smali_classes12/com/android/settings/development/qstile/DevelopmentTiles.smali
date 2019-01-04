.class public abstract Lcom/android/settings/development/qstile/DevelopmentTiles;
.super Landroid/service/quicksettings/TileService;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$AnimationSpeed;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$ForceRTL;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$GPUProfiling;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$ShowLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DevelopmentTiles"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract isEnabled()Z
.end method

.method public onClick()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/development/qstile/DevelopmentTiles;->setIsEnabled(Z)V

    .line 66
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->refresh()V

    .line 68
    return-void
.end method

.method public onStartListening()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->refresh()V

    .line 50
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected abstract setIsEnabled(Z)V
.end method
