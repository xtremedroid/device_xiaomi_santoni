.class Landroid/support/v17/leanback/widget/TitleHelper$1;
.super Ljava/lang/Object;
.source "TitleHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/TitleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/TitleHelper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/TitleHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/TitleHelper;

    .line 43
    iput-object p1, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 46
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    const/16 v0, 0x21

    if-ne p2, v0, :cond_0

    .line 47
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    return-object v0

    .line 49
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 51
    .local v0, "isRtl":Z
    if-eqz v0, :cond_2

    const/16 v1, 0x11

    goto :goto_1

    :cond_2
    const/16 v1, 0x42

    .line 52
    .local v1, "forward":I
    :goto_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x82

    if-eq p2, v2, :cond_3

    if-ne p2, v1, :cond_4

    .line 53
    :cond_3
    iget-object v2, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v2

    .line 55
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method
