.class Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;
.super Ljava/lang/Object;
.source "PlaybackSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSelectionRunnable"
.end annotation


# instance fields
.field mPosition:I

.field mSmooth:Z

.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;


# direct methods
.method private constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;->mSmooth:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Landroid/support/v17/leanback/app/PlaybackSupportFragment$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v17/leanback/app/PlaybackSupportFragment;
    .param p2, "x1"    # Landroid/support/v17/leanback/app/PlaybackSupportFragment$1;

    .line 116
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 122
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-nez v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;->mPosition:I

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;->mSmooth:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setSelectedPosition(IZ)V

    .line 126
    return-void
.end method
