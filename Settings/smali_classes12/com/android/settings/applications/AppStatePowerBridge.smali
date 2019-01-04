.class public Lcom/android/settings/applications/AppStatePowerBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStatePowerBridge.java"


# static fields
.field public static final FILTER_POWER_WHITELISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v2, Lcom/android/settings/applications/AppStatePowerBridge$1;

    invoke-direct {v2}, Lcom/android/settings/applications/AppStatePowerBridge$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    sput-object v0, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appState"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p3, "callback"    # Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 37
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStatePowerBridge;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    .line 38
    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/AppStatePowerBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 43
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 44
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 46
    .local v3, "app":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v4, p0, Lcom/android/settings/applications/AppStatePowerBridge;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 44
    .end local v3    # "app":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/AppStatePowerBridge;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 54
    return-void
.end method
