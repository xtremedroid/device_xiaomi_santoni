.class Lcom/oneplus/settings/others/OPToolsSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPToolsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/others/OPToolsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string v1, "anti_misoperation_of_the_screen_touch_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v1, "oneplus_app_locker"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v1, "oneplus_laboratory_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isLaboratoryFeatureExist()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    const-string v1, "oneplus_laboratory_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportQuickLaunch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    const-string v1, "oneplus_quick_pay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_2
    const-string v1, "oneplus_quick_launch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :goto_0
    invoke-static {p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 337
    :cond_3
    const-string v1, "oneplus_quick_pay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 341
    const-string v1, "oneplus_quick_launch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_5
    const-string v1, "com.oneplus.clipboard"

    invoke-static {p1, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 345
    const-string v1, "quick_clipboard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_6
    const-string v1, "com.oneplus.backuprestore"

    invoke-static {p1, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 349
    const-string v1, "switch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_7
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f16009b

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 314
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
