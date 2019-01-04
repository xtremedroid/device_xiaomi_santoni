.class public Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "OPFingerprintEnrollIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;


# static fields
.field protected static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x1

.field protected static final CHOOSE_LOCK_GENERIC_REQUEST_BY_FACEUNLOCK:I = 0x7

.field protected static final FACE_UNLOCK_SETUP_REQUEST:I = 0x4

.field protected static final FINGERPRINT_FIND_SENSOR_REQUEST:I = 0x2

.field private static final FINISH_FINGERPRINT_REQUEST:I = 0x64

.field protected static final GO_TO_FACE_UNLOCK_PAGE:I = 0x5

.field protected static final KEY_FACEUNLOCK_FUNCTIONAL_TERMS_TYPE:I = 0xa

.field protected static final KEY_FINGERPRINT_FUNCTIONAL_TERMS_TYPE:I = 0x8

.field protected static final KEY_FROM_SETTINGS:Ljava/lang/String; = "key_from_settings"

.field protected static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field protected static final LEARN_MORE_REQUEST:I = 0x3

.field protected static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"

.field private static final TAG:Ljava/lang/String; = "FingerprintEnrollIntroduction"


# instance fields
.field private mErrorText:Landroid/widget/TextView;

.field private mFingerprintUnlockDisabledByAdmin:Z

.field protected mFromSetup:Z

.field private mHandler:Landroid/os/Handler;

.field protected mHasPassword:Z

.field private mNextButtonClicked:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mNextButtonClicked:Z

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mHandler:Landroid/os/Handler;

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mFromSetup:Z

    return-void
.end method

.method private launchChooseLock()V
    .locals 6

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v1

    .line 176
    .local v1, "challenge":J
    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v3, "hide_disabled_prefs"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string v3, "challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 181
    const-string v3, "for_fingerprint"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    iget v3, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mUserId:I

    const/16 v5, -0x2710

    if-eq v3, v5, :cond_0

    .line 183
    const-string v3, "android.intent.extra.USER_ID"

    iget v5, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 186
    return-void
.end method

.method private launchFindSensor([B)V
    .locals 3
    .param p1, "token"    # [B

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 191
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 193
    :cond_0
    iget v1, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 194
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 197
    return-void
.end method

.method private updatePasswordQuality()V
    .locals 3

    .line 152
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mUserId:I

    .line 153
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 154
    .local v0, "passwordQuality":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mHasPassword:Z

    .line 155
    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 245
    const/16 v0, 0xf3

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 159
    const v0, 0x7f0a01f3

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    .line 255
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->initViews()V

    .line 256
    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    .local v0, "description":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    if-eqz v1, :cond_0

    .line 258
    const v1, 0x7f120fca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 209
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 210
    .local v1, "isResultFinished":Z
    :goto_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 211
    if-nez v1, :cond_1

    if-ne p2, v2, :cond_6

    .line 212
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, -0x1

    nop

    :cond_2
    move v0, v2

    .line 213
    .local v0, "result":I
    invoke-virtual {p0, v0, p3}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->finish()V

    .line 215
    return-void

    .line 217
    .end local v0    # "result":I
    :cond_3
    if-ne p1, v0, :cond_4

    .line 218
    if-eqz v1, :cond_6

    .line 219
    invoke-direct {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 220
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 222
    .local v0, "token":[B
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->launchFindSensor([B)V

    .line 223
    return-void

    .line 225
    .end local v0    # "token":[B
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 226
    const v0, 0x7f01004c

    const v2, 0x7f01004d

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->overridePendingTransition(II)V

    goto :goto_1

    .line 227
    :cond_5
    const/16 v0, 0x64

    if-ne p1, v0, :cond_6

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->finish()V

    .line 229
    return-void

    .line 231
    :cond_6
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 232
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->finish()V

    .line 250
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01ef

    if-ne v0, v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->onCancelButtonClick()V

    goto :goto_0

    .line 239
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    .line 241
    :goto_0
    return-void
.end method

.method public onClick(Lcom/android/setupwizardlib/span/LinkSpan;)V
    .locals 6
    .param p1, "span"    # Lcom/android/setupwizardlib/span/LinkSpan;

    .line 266
    const-string v0, "url"

    invoke-virtual {p1}, Lcom/android/setupwizardlib/span/LinkSpan;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const v0, 0x7f120717

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 269
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 270
    const-string v2, "FingerprintEnrollIntroduction"

    const-string v3, "Null help intent."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void

    .line 276
    :cond_0
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "FingerprintEnrollIntroduction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity was not found for intent, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 81
    iget v0, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mUserId:I

    const/16 v1, 0x20

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    .line 84
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const v0, 0x7f0d016c

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->setContentView(I)V

    goto :goto_1

    .line 87
    :cond_1
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->setContentView(I)V

    .line 89
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    const v2, 0x7f120fcb

    if-eqz v0, :cond_2

    .line 90
    const v0, 0x7f120fcc

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->setHeaderText(I)V

    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->setHeaderText(I)V

    .line 96
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 97
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 103
    :cond_3
    const v1, 0x7f0a01ef

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 104
    .local v1, "cancelButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v2, 0x7f0a0214

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    .local v2, "functionalTermsButton":Landroid/widget/TextView;
    new-instance v3, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction$1;-><init>(Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v3, 0x7f0a01d6

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    .line 118
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    .line 121
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 3

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    .line 166
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 169
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    const v1, 0x7f010029

    const v2, 0x7f010028

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->overridePendingTransition(II)V

    .line 171
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 125
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 127
    invoke-direct {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 129
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 130
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v1, 0x0

    .line 131
    .local v1, "errorMsg":I
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 134
    .local v2, "max":I
    iget v3, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mUserId:I

    .line 135
    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 136
    .local v3, "numEnrolledFingerprints":I
    if-lt v3, v2, :cond_0

    .line 137
    const v1, 0x7f120664

    .line 139
    .end local v2    # "max":I
    .end local v3    # "numEnrolledFingerprints":I
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    const v1, 0x7f120665

    .line 142
    :goto_0
    if-nez v1, :cond_2

    .line 143
    iget-object v2, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 146
    :cond_2
    iget-object v2, p0, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/OPFingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    :goto_1
    return-void
.end method
