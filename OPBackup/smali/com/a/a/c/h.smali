.class public Lcom/a/a/c/h;
.super Ljava/lang/Object;
.source "JSONToken.java"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x9

.field public static final j:I = 0xa

.field public static final k:I = 0xb

.field public static final l:I = 0xc

.field public static final m:I = 0xd

.field public static final n:I = 0xe

.field public static final o:I = 0xf

.field public static final p:I = 0x10

.field public static final q:I = 0x11

.field public static final r:I = 0x12

.field public static final s:I = 0x13

.field public static final t:I = 0x14

.field public static final u:I = 0x15

.field public static final v:I = 0x16

.field public static final w:I = 0x17

.field public static final x:I = 0x18

.field public static final y:I = 0x19

.field public static final z:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    packed-switch p0, :pswitch_data_0

    .line 128
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    const-string v0, "error"

    goto :goto_0

    .line 78
    :pswitch_1
    const-string v0, "int"

    goto :goto_0

    .line 80
    :pswitch_2
    const-string v0, "float"

    goto :goto_0

    .line 82
    :pswitch_3
    const-string v0, "string"

    goto :goto_0

    .line 84
    :pswitch_4
    const-string v0, "iso8601"

    goto :goto_0

    .line 86
    :pswitch_5
    const-string v0, "true"

    goto :goto_0

    .line 88
    :pswitch_6
    const-string v0, "false"

    goto :goto_0

    .line 90
    :pswitch_7
    const-string v0, "null"

    goto :goto_0

    .line 92
    :pswitch_8
    const-string v0, "new"

    goto :goto_0

    .line 94
    :pswitch_9
    const-string v0, "("

    goto :goto_0

    .line 96
    :pswitch_a
    const-string v0, ")"

    goto :goto_0

    .line 98
    :pswitch_b
    const-string v0, "{"

    goto :goto_0

    .line 100
    :pswitch_c
    const-string v0, "}"

    goto :goto_0

    .line 102
    :pswitch_d
    const-string v0, "["

    goto :goto_0

    .line 104
    :pswitch_e
    const-string v0, "]"

    goto :goto_0

    .line 106
    :pswitch_f
    const-string v0, ","

    goto :goto_0

    .line 108
    :pswitch_10
    const-string v0, ":"

    goto :goto_0

    .line 110
    :pswitch_11
    const-string v0, ";"

    goto :goto_0

    .line 112
    :pswitch_12
    const-string v0, "."

    goto :goto_0

    .line 114
    :pswitch_13
    const-string v0, "ident"

    goto :goto_0

    .line 116
    :pswitch_14
    const-string v0, "fieldName"

    goto :goto_0

    .line 118
    :pswitch_15
    const-string v0, "EOF"

    goto :goto_0

    .line 120
    :pswitch_16
    const-string v0, "Set"

    goto :goto_0

    .line 122
    :pswitch_17
    const-string v0, "TreeSet"

    goto :goto_0

    .line 124
    :pswitch_18
    const-string v0, "undefined"

    goto :goto_0

    .line 126
    :pswitch_19
    const-string v0, "hex"

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_11
        :pswitch_12
        :pswitch_19
    .end packed-switch
.end method
