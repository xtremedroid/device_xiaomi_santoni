.class final Lcom/oneplus/lib/widget/ViewPager$g$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ViewPager$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/oneplus/lib/widget/ViewPager$g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oneplus/lib/widget/ViewPager$g;
    .locals 1

    .prologue
    .line 1218
    new-instance v0, Lcom/oneplus/lib/widget/ViewPager$g;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/ViewPager$g;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/oneplus/lib/widget/ViewPager$g;
    .locals 1

    .prologue
    .line 1222
    new-array v0, p1, [Lcom/oneplus/lib/widget/ViewPager$g;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1215
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ViewPager$g$1;->a(Landroid/os/Parcel;)Lcom/oneplus/lib/widget/ViewPager$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1215
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ViewPager$g$1;->a(I)[Lcom/oneplus/lib/widget/ViewPager$g;

    move-result-object v0

    return-object v0
.end method
