.class Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 2729
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2730
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .line 2743
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 2734
    nop

    .line 2735
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Landroid/support/v7/appcompat/R$attr;->homeAsUpIndicator:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2734
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 2736
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2737
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 2738
    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 2

    .line 2748
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 2749
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setActionBarDescription(I)V
    .locals 1
    .param p1, "contentDescRes"    # I

    .line 2763
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 2764
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 2765
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 2767
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 2754
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 2755
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 2756
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 2757
    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 2759
    :cond_0
    return-void
.end method
