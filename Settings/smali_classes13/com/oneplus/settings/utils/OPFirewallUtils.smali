.class public Lcom/oneplus/settings/utils/OPFirewallUtils;
.super Ljava/lang/Object;
.source "OPFirewallUtils.java"


# static fields
.field public static final COLUMN_MOBILE:Ljava/lang/String; = "mobile"

.field public static final COLUMN_PACKAGE:Ljava/lang/String; = "pkg"

.field public static final COLUMN_WLAN:Ljava/lang/String; = "wlan"

.field public static final OPSAFE_AUTHORITY:Ljava/lang/String; = "com.oneplus.security.database.SafeProvider"

.field public static final TABLE_NETWORK_RESTRICT:Ljava/lang/String; = "network_restrict"

.field private static final TAG:Ljava/lang/String; = "OPFirewallUtils"

.field public static final URI_NETWORK_RESTRICT:Landroid/net/Uri;

.field public static final URI_OPSAFE_BASE:Landroid/net/Uri;

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-string v0, "content://com.oneplus.security.database.SafeProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_OPSAFE_BASE:Landroid/net/Uri;

    .line 22
    sget-object v0, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_OPSAFE_BASE:Landroid/net/Uri;

    const-string v1, "network_restrict"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFirewallRule;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "firewallRule"    # Lcom/oneplus/settings/utils/OPFirewallRule;

    .line 35
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 37
    const-string v1, "wlan"

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 40
    const-string v1, "mobile"

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPFirewallUtils;->selectFirewallRuleByPkg(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/utils/OPFirewallRule;

    move-result-object v1

    .line 44
    .local v1, "fr":Lcom/oneplus/settings/utils/OPFirewallRule;
    if-nez v1, :cond_4

    .line 45
    :try_start_0
    const-string v2, "pkg"

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 50
    :catch_0
    move-exception v2

    goto :goto_3

    .line 48
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    const-string v6, "pkg = ? "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oneplus/settings/utils/OPFirewallRule;->getPkg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-virtual {v4, v5, v0, v6, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_2
    goto :goto_4

    .line 50
    :goto_3
    nop

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OPFirewallUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public static selectAllFirewallRules(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/utils/OPFirewallRule;",
            ">;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 65
    .local v1, "roleList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/utils/OPFirewallRule;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 66
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 68
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 70
    .local v2, "_id":I
    const-string v3, "pkg"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, "wlan"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 72
    .local v4, "wlan":I
    const-string v5, "mobile"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 73
    .local v5, "mobile":I
    new-instance v6, Lcom/oneplus/settings/utils/OPFirewallRule;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v7, v3, v8, v9}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 74
    .local v6, "role":Lcom/oneplus/settings/utils/OPFirewallRule;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v2    # "_id":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "wlan":I
    .end local v5    # "mobile":I
    .end local v6    # "role":Lcom/oneplus/settings/utils/OPFirewallRule;
    goto :goto_0

    .line 80
    :cond_0
    if-eqz v0, :cond_1

    .line 81
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 80
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "OPFirewallUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    :goto_2
    return-object v1

    .line 80
    :goto_3
    if-eqz v0, :cond_2

    .line 81
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static selectFirewallRuleByPkg(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/utils/OPFirewallRule;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    move-object v1, v0

    .line 96
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/settings/utils/OPFirewallUtils;->URI_NETWORK_RESTRICT:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "pkg = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 97
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 98
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 100
    .local v2, "_id":I
    const-string v3, "pkg"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, "wlan"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 102
    .local v4, "wlan":I
    const-string v5, "mobile"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 103
    .local v5, "mobile":I
    new-instance v6, Lcom/oneplus/settings/utils/OPFirewallRule;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v7, v3, v8, v9}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 104
    .local v0, "role":Lcom/oneplus/settings/utils/OPFirewallRule;
    nop

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 104
    :cond_0
    return-object v0

    .line 110
    .end local v0    # "role":Lcom/oneplus/settings/utils/OPFirewallRule;
    .end local v2    # "_id":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "wlan":I
    .end local v5    # "mobile":I
    :cond_1
    if-eqz v1, :cond_2

    .line 111
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "OPFirewallUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    goto :goto_0

    .line 114
    :cond_2
    :goto_1
    return-object v0

    .line 110
    :goto_2
    if-eqz v1, :cond_3

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
