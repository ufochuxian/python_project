.class public Lcn/sharesdk/framework/b/d;
.super Lcom/mob/tools/d;
.source "SourceFile"


# static fields
.field private static a:Lcn/sharesdk/framework/b/d;


# instance fields
.field private b:Lcom/mob/tools/c/e;

.field private c:Lcn/sharesdk/framework/b/a;

.field private d:Landroid/os/Handler;

.field private e:I

.field private f:Z

.field private g:J

.field private h:Z

.field private i:Ljava/io/File;

.field private j:Lcom/mob/tools/c/f;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mob/tools/d;-><init>()V

    .line 57
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/d;->b:Lcom/mob/tools/c/e;

    .line 58
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcn/sharesdk/framework/b/a;

    .line 59
    new-instance v0, Lcom/mob/tools/c/f;

    invoke-direct {v0}, Lcom/mob/tools/c/f;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/b/d;->j:Lcom/mob/tools/c/f;

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".statistics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/sharesdk/framework/b/d;->i:Ljava/io/File;

    .line 61
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcn/sharesdk/framework/b/d;)Lcn/sharesdk/framework/b/a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcn/sharesdk/framework/b/a;

    return-object v0
.end method

.method public static declared-synchronized a()Lcn/sharesdk/framework/b/d;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcn/sharesdk/framework/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/sharesdk/framework/b/d;->a:Lcn/sharesdk/framework/b/d;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcn/sharesdk/framework/b/d;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/d;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/b/d;->a:Lcn/sharesdk/framework/b/d;

    .line 53
    :cond_0
    sget-object v0, Lcn/sharesdk/framework/b/d;->a:Lcn/sharesdk/framework/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 231
    invoke-direct {p0}, Lcn/sharesdk/framework/b/d;->c()Z

    move-result v0

    .line 232
    if-eqz v0, :cond_1

    .line 234
    iget-boolean v1, p0, Lcn/sharesdk/framework/b/d;->h:Z

    if-nez v1, :cond_0

    .line 235
    iput-boolean v0, p0, Lcn/sharesdk/framework/b/d;->h:Z

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/sharesdk/framework/b/d;->g:J

    .line 237
    new-instance v0, Lcn/sharesdk/framework/b/b/g;

    invoke-direct {v0}, Lcn/sharesdk/framework/b/b/g;-><init>()V

    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-boolean v1, p0, Lcn/sharesdk/framework/b/d;->h:Z

    if-eqz v1, :cond_0

    .line 241
    iput-boolean v0, p0, Lcn/sharesdk/framework/b/d;->h:Z

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/sharesdk/framework/b/d;->g:J

    sub-long/2addr v0, v2

    .line 243
    new-instance v2, Lcn/sharesdk/framework/b/b/e;

    invoke-direct {v2}, Lcn/sharesdk/framework/b/b/e;-><init>()V

    .line 244
    iput-wide v0, v2, Lcn/sharesdk/framework/b/b/e;->a:J

    .line 245
    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    goto :goto_0
.end method

.method private b(Lcn/sharesdk/framework/b/b/c;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->b:Lcom/mob/tools/c/e;

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->F()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/c;->f:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->b:Lcom/mob/tools/c/e;

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/c;->g:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->b:Lcom/mob/tools/c/e;

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->I()I

    move-result v0

    iput v0, p1, Lcn/sharesdk/framework/b/b/c;->h:I

    .line 155
    const v0, 0xea60

    iget v1, p0, Lcn/sharesdk/framework/b/d;->e:I

    add-int/2addr v0, v1

    .line 156
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/c;->i:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->b:Lcom/mob/tools/c/e;

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->C()I

    move-result v0

    iput v0, p1, Lcn/sharesdk/framework/b/b/c;->j:I

    .line 158
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->b:Lcom/mob/tools/c/e;

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/c;->k:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/mob/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const-string v0, "Your appKey of ShareSDK is null , this will cause its data won\'t be count!"

    .line 162
    const-string v1, "ShareSDKCore"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->b:Lcom/mob/tools/c/e;

    invoke-virtual {v0}, Lcom/mob/tools/c/e;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/framework/b/b/c;->l:Ljava/lang/String;

    .line 170
    return-void

    .line 163
    :cond_1
    const-string v0, "cn.sharesdk.demo"

    iget-object v1, p1, Lcn/sharesdk/framework/b/b/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "api20"

    .line 164
    invoke-static {}, Lcom/mob/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "androidv1101"

    invoke-static {}, Lcom/mob/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :cond_2
    const-string v0, "Your app is using the appkey of ShareSDK Demo, this will cause its data won\'t be count!"

    .line 166
    const-string v1, "ShareSDKCore"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c(Lcn/sharesdk/framework/b/b/c;)V
    .locals 3

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/a;->a(Lcn/sharesdk/framework/b/b/c;)V

    .line 223
    invoke-virtual {p1}, Lcn/sharesdk/framework/b/b/c;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 226
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    invoke-virtual {p1}, Lcn/sharesdk/framework/b/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/mob/tools/c/e;->M()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcn/sharesdk/framework/b/d;->e:I

    .line 80
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcn/sharesdk/framework/b/d;->d:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method public a(Lcn/sharesdk/framework/b/b/c;)V
    .locals 3

    .prologue
    .line 133
    iget-boolean v0, p0, Lcn/sharesdk/framework/b/d;->f:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/b/d;->b(Lcn/sharesdk/framework/b/b/c;)V

    .line 135
    invoke-virtual {p1}, Lcn/sharesdk/framework/b/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 137
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 138
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/b/d;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/sharesdk/framework/b/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/a;->a(Z)V

    .line 76
    return-void
.end method

.method protected onMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/sharesdk/framework/b/b/c;

    .line 177
    invoke-direct {p0, v0}, Lcn/sharesdk/framework/b/d;->c(Lcn/sharesdk/framework/b/b/c;)V

    .line 178
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-direct {p0}, Lcn/sharesdk/framework/b/d;->b()V

    .line 185
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 192
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    .line 194
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 198
    :pswitch_3
    invoke-static {}, Lcn/sharesdk/framework/b/a/e;->a()Lcn/sharesdk/framework/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a/e;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 201
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 202
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 203
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 204
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 207
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 208
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 209
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 211
    if-ne v0, v4, :cond_1

    if-ne v1, v5, :cond_1

    if-eq v3, v2, :cond_2

    .line 212
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a;->c()V

    .line 214
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onStart(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-boolean v0, p0, Lcn/sharesdk/framework/b/d;->f:Z

    if-nez v0, :cond_0

    .line 84
    iput-boolean v1, p0, Lcn/sharesdk/framework/b/d;->f:Z

    .line 86
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->j:Lcom/mob/tools/c/f;

    iget-object v1, p0, Lcn/sharesdk/framework/b/d;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/c/f;->a(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->j:Lcom/mob/tools/c/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/tools/c/f;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/sharesdk/framework/b/d$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/b/d$1;-><init>(Lcn/sharesdk/framework/b/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a;->b()V

    .line 99
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->c:Lcn/sharesdk/framework/b/a;

    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a;->c()V

    .line 101
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onStop(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcn/sharesdk/framework/b/d;->f:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/sharesdk/framework/b/d;->g:J

    sub-long/2addr v0, v2

    .line 115
    new-instance v2, Lcn/sharesdk/framework/b/b/e;

    invoke-direct {v2}, Lcn/sharesdk/framework/b/b/e;-><init>()V

    .line 116
    iput-wide v0, v2, Lcn/sharesdk/framework/b/b/e;->a:J

    .line 117
    invoke-virtual {p0, v2}, Lcn/sharesdk/framework/b/d;->a(Lcn/sharesdk/framework/b/b/c;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/framework/b/d;->f:Z

    .line 121
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcn/sharesdk/framework/b/d;->a:Lcn/sharesdk/framework/b/d;

    .line 127
    iget-object v0, p0, Lcn/sharesdk/framework/b/d;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 129
    :cond_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-static {}, Lcn/sharesdk/framework/utils/d;->b()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
