.class public abstract Lcom/a/a/d/c;
.super Ljava/lang/Object;
.source "AfterFilter.java"

# interfaces
.implements Lcom/a/a/d/bb;


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/a/a/d/ah;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/a/a/d/c;->a:Ljava/lang/ThreadLocal;

    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/a/a/d/c;->b:Ljava/lang/ThreadLocal;

    .line 11
    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/a/a/d/c;->c:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/a/a/d/ah;Ljava/lang/Object;C)C
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/a/a/d/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 15
    sget-object v0, Lcom/a/a/d/c;->b:Ljava/lang/ThreadLocal;

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/a/a/d/c;->a(Ljava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/a/a/d/c;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/a/a/d/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/a/a/d/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/ah;

    .line 23
    sget-object v1, Lcom/a/a/d/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 24
    invoke-virtual {v0, v1, p1, p2}, Lcom/a/a/d/ah;->a(CLjava/lang/String;Ljava/lang/Object;)V

    .line 25
    const/16 v0, 0x2c

    if-eq v1, v0, :cond_0

    .line 26
    sget-object v0, Lcom/a/a/d/c;->b:Ljava/lang/ThreadLocal;

    sget-object v1, Lcom/a/a/d/c;->c:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 28
    :cond_0
    return-void
.end method
