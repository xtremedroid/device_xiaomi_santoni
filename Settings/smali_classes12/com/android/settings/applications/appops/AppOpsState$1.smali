.class Lcom/android/settings/applications/appops/AppOpsState$1;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;)I
    .locals 6
    .param p1, "object1"    # Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;
    .param p2, "object2"    # Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    .line 441
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 442
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getSwitchOrder()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2

    .line 444
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 446
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2

    .line 448
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 450
    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    move v2, v3

    nop

    :cond_4
    return v2

    .line 452
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$1;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 437
    check-cast p1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    check-cast p2, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appops/AppOpsState$1;->compare(Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;)I

    move-result p1

    return p1
.end method
