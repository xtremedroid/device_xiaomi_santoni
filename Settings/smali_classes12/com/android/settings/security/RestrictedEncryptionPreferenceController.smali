.class public abstract Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RestrictedEncryptionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mUserHandle:Landroid/os/UserHandle;

.field protected final mUserManager:Landroid/os/UserManager;

.field private final mUserRestriction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userRestriction"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 37
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 38
    iput-object p2, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserRestriction:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserRestriction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
