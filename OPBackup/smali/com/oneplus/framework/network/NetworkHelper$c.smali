.class public final enum Lcom/oneplus/framework/network/NetworkHelper$c;
.super Ljava/lang/Enum;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/framework/network/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/framework/network/NetworkHelper$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/oneplus/framework/network/NetworkHelper$c;

.field public static final enum b:Lcom/oneplus/framework/network/NetworkHelper$c;

.field public static final enum c:Lcom/oneplus/framework/network/NetworkHelper$c;

.field private static final synthetic d:[Lcom/oneplus/framework/network/NetworkHelper$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/oneplus/framework/network/NetworkHelper$c;

    const-string v1, "NetworkNotReachable"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/framework/network/NetworkHelper$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/framework/network/NetworkHelper$c;->a:Lcom/oneplus/framework/network/NetworkHelper$c;

    .line 27
    new-instance v0, Lcom/oneplus/framework/network/NetworkHelper$c;

    const-string v1, "NetworkReachableViaWWAN"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/framework/network/NetworkHelper$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/framework/network/NetworkHelper$c;->b:Lcom/oneplus/framework/network/NetworkHelper$c;

    .line 28
    new-instance v0, Lcom/oneplus/framework/network/NetworkHelper$c;

    const-string v1, "NetworkReachableViaWiFi"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/framework/network/NetworkHelper$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/framework/network/NetworkHelper$c;->c:Lcom/oneplus/framework/network/NetworkHelper$c;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/framework/network/NetworkHelper$c;

    sget-object v1, Lcom/oneplus/framework/network/NetworkHelper$c;->a:Lcom/oneplus/framework/network/NetworkHelper$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/framework/network/NetworkHelper$c;->b:Lcom/oneplus/framework/network/NetworkHelper$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/framework/network/NetworkHelper$c;->c:Lcom/oneplus/framework/network/NetworkHelper$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/framework/network/NetworkHelper$c;->d:[Lcom/oneplus/framework/network/NetworkHelper$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/framework/network/NetworkHelper$c;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/oneplus/framework/network/NetworkHelper$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/framework/network/NetworkHelper$c;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/framework/network/NetworkHelper$c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/oneplus/framework/network/NetworkHelper$c;->d:[Lcom/oneplus/framework/network/NetworkHelper$c;

    array-length v1, v0

    new-array v2, v1, [Lcom/oneplus/framework/network/NetworkHelper$c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
