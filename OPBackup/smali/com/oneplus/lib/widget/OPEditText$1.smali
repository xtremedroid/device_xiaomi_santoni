.class Lcom/oneplus/lib/widget/OPEditText$1;
.super Ljava/lang/Object;
.source "OPEditText.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/OPEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/lib/widget/OPEditText;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPEditText;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEditText$1;->a:Lcom/oneplus/lib/widget/OPEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEditText$1;->a:Lcom/oneplus/lib/widget/OPEditText;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPEditText;->a(Lcom/oneplus/lib/widget/OPEditText;)V

    .line 70
    const/4 v0, 0x0

    return v0
.end method
