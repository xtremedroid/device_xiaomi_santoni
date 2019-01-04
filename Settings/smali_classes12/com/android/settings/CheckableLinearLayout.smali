.class public Lcom/android/settings/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z

.field private mDisabledAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 33
    .local v0, "alpha":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 34
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/settings/CheckableLinearLayout;->mDisabledAlpha:F

    .line 35
    return-void
.end method

.method private updateChecked()V
    .locals 5

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/CheckableLinearLayout;->getChildCount()I

    move-result v0

    .line 64
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/settings/CheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 67
    move-object v3, v2

    check-cast v3, Landroid/widget/Checkable;

    iget-boolean v4, p0, Lcom/android/settings/CheckableLinearLayout;->mChecked:Z

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 64
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/android/settings/CheckableLinearLayout;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/CheckableLinearLayout;->mChecked:Z

    .line 49
    invoke-direct {p0}, Lcom/android/settings/CheckableLinearLayout;->updateChecked()V

    .line 50
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 39
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/CheckableLinearLayout;->getChildCount()I

    move-result v0

    .line 41
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/settings/CheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/android/settings/CheckableLinearLayout;->mDisabledAlpha:F

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/android/settings/CheckableLinearLayout;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/CheckableLinearLayout;->setChecked(Z)V

    .line 60
    return-void
.end method
