.class Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

.field private c:J


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;->b:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;->a:J

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;->c:J

    return-void
.end method

.method private a(J)Z
    .locals 3
    .param p1, "date"    # J

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;->c:J

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
    .line 89
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 91
    const/4 v7, 0x0

    .line 93
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;->b:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;->getActivityRef()Landroid/app/Activity;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/inbox"

    .line 95
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "type = ? AND date > ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->access$100()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    iget-wide v12, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const-string v5, "date desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 96
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

    .line 119
    :cond_0
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    :try_start_1
    const-string v0, "date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 100
    .local v8, "date":J
    invoke-direct {p0, v8, v9}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;->a(J)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 104
    :cond_3
    :try_start_2
    iput-wide v8, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;->c:J

    .line 105
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, "messageBody":Ljava/lang/String;
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/x;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "code":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;->b:Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;->getActivityRef()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2$1;

    invoke-direct {v1, p0, v6}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :cond_4
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 116
    .end local v6    # "code":Ljava/lang/String;
    .end local v8    # "date":J
    .end local v11    # "messageBody":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 117
    .local v10, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v10}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 119
    .end local v10    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_5
    throw v0
.end method
