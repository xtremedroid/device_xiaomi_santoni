.class public Lcom/oneplus/settings/statusbar/ClockPreference;
.super Landroid/support/v7/preference/ListPreference;
.source "ClockPreference.java"


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final DISABLED:Ljava/lang/String; = "disabled"

.field private static final SECONDS:Ljava/lang/String; = "seconds"

.field private static final TAG:Ljava/lang/String; = "ClockPreference"


# instance fields
.field private mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Ljava/lang/String;

.field private mClockEnabled:Z

.field private mHasSeconds:Z

.field private mHasSetValue:Z

.field private mUtils:Lcom/oneplus/settings/statusbar/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/oneplus/settings/statusbar/Utils;

    invoke-direct {v0, p1}, Lcom/oneplus/settings/statusbar/Utils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    .line 40
    const v0, 0x1040641

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "seconds"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "default"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "disabled"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/statusbar/ClockPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method

.method private updateStatus()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const-string v1, "icon_blacklist"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/statusbar/Utils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/settings/statusbar/Utils;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    .line 75
    iget-object v1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClockEnabled:Z

    .line 76
    iget-object v1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const-string v3, "clock_seconds"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/settings/statusbar/Utils;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSeconds:Z

    .line 77
    const-string v1, "ClockPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatus mBlacklist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " TextUtils.join:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    iget-object v4, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method private updateUI()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/oneplus/settings/statusbar/ClockPreference;->updateStatus()V

    .line 57
    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSetValue:Z

    if-nez v0, :cond_2

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSetValue:Z

    .line 62
    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClockEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSeconds:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "seconds"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/statusbar/ClockPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClockEnabled:Z

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/statusbar/ClockPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    const-string v0, "disabled"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/statusbar/ClockPreference;->setValue(Ljava/lang/String;)V

    .line 70
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/support/v7/preference/ListPreference;->onAttached()V

    .line 47
    invoke-direct {p0}, Lcom/oneplus/settings/statusbar/ClockPreference;->updateUI()V

    .line 48
    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroid/support/v7/preference/ListPreference;->onDetached()V

    .line 53
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 84
    return v1

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/statusbar/ClockPreference;->updateStatus()V

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const-string v2, "clock_seconds"

    const-string v3, "seconds"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/settings/statusbar/Utils;->setValue(Ljava/lang/String;I)V

    .line 88
    const-string v0, "disabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 93
    :goto_0
    const-string v0, "ClockPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mBlacklist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    iget-object v4, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const-string v2, "icon_blacklist"

    const-string v3, ","

    iget-object v4, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    .line 95
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v0, v2, v3}, Lcom/oneplus/settings/statusbar/Utils;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return v1
.end method
