.class Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

.field private c:J


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;->b:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;->a:J

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;->c:J

    return-void
.end method

.method private a(J)Z
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;->c:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 14
    .param p1, "selfChange"    # Z

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 188
    const/4 v7, 0x0

    .line 190
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;->b:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "type = ? AND date > ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->access$300()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    iget-wide v12, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const-string v5, "date desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 191
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 214
    :cond_0
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    :try_start_1
    const-string v0, "date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 195
    .local v8, "date":J
    invoke-direct {p0, v8, v9}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;->a(J)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 199
    :cond_3
    :try_start_2
    iput-wide v8, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;->c:J

    .line 200
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 201
    .local v11, "messageBody":Ljava/lang/String;
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/x;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "code":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;->b:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    new-instance v1, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7$1;

    invoke-direct {v1, p0, v6}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7$1;-><init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 211
    .end local v6    # "code":Ljava/lang/String;
    .end local v8    # "date":J
    .end local v11    # "messageBody":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 212
    .local v10, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v10}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 214
    .end local v10    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_5
    throw v0
.end method
