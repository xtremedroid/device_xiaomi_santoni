.class Lcom/b/a/d/d/a/n$b;
.super Lcom/b/a/d/d/a/n;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/d/d/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/b/a/d/d/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)F
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 199
    int-to-float v1, p2

    int-to-float v2, p4

    div-float/2addr v1, v2

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 203
    if-ge v2, v1, :cond_0

    :goto_0
    shl-int v0, v2, v0

    .line 204
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(IIII)Lcom/b/a/d/d/a/n$g;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/b/a/d/d/a/n$g;->a:Lcom/b/a/d/d/a/n$g;

    return-object v0
.end method
