.class public Lcom/jiliguala/niuwa/logic/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/jiliguala/niuwa/logic/j/a;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:Landroid/view/View;

.field private k:Lcom/jiliguala/niuwa/logic/j/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->b:I

    .line 20
    iput v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->c:I

    .line 22
    iput v1, p0, Lcom/jiliguala/niuwa/logic/j/a;->d:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->e:I

    .line 26
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/logic/j/a;->f:Z

    .line 28
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/logic/j/a;->g:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->h:Z

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/j/a;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/jiliguala/niuwa/logic/j/a;->a:Lcom/jiliguala/niuwa/logic/j/a;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/jiliguala/niuwa/logic/j/a;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/j/a;->a:Lcom/jiliguala/niuwa/logic/j/a;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/jiliguala/niuwa/logic/j/a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/j/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/j/a;->a:Lcom/jiliguala/niuwa/logic/j/a;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/jiliguala/niuwa/logic/j/a;->a:Lcom/jiliguala/niuwa/logic/j/a;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(JI)Z
    .locals 7
    .param p1, "targetDate"    # J
    .param p3, "threshold"    # I

    .prologue
    const/4 v0, 0x1

    .line 198
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/j/d;->f(Landroid/content/Context;)V

    .line 202
    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    mul-int/lit8 v1, p3, 0x18

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    sget-object v1, Lcom/jiliguala/niuwa/logic/j/a;->a:Lcom/jiliguala/niuwa/logic/j/a;

    iget-boolean v1, v1, Lcom/jiliguala/niuwa/logic/j/a;->h:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/jiliguala/niuwa/logic/j/a;->a:Lcom/jiliguala/niuwa/logic/j/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/j/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 55
    .local v0, "isMeetsConditions":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 56
    sget-object v1, Lcom/jiliguala/niuwa/logic/j/a;->a:Lcom/jiliguala/niuwa/logic/j/a;

    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/logic/j/a;->d(Landroid/app/Activity;)V

    .line 64
    :goto_1
    return v0

    .line 54
    .end local v0    # "isMeetsConditions":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    .restart local v0    # "isMeetsConditions":Z
    :cond_2
    const/4 v1, 0x0

    const-string v2, "REVIEW_DIALOG"

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->addDialogToChain(Landroid/app/Dialog;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Landroid/app/Activity;Z)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shouldShow"    # Z

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->o(Landroid/content/Context;)I

    move-result v1

    .line 78
    .local v1, "eventTimes":I
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/j/d;->b(Landroid/content/Context;I)V

    .line 79
    sget-object v3, Lcom/jiliguala/niuwa/logic/j/a;->a:Lcom/jiliguala/niuwa/logic/j/a;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/j/a;->h:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/jiliguala/niuwa/logic/j/a;->a:Lcom/jiliguala/niuwa/logic/j/a;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/j/a;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 80
    .local v2, "isMeetsConditions":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 81
    sget-object v3, Lcom/jiliguala/niuwa/logic/j/a;->a:Lcom/jiliguala/niuwa/logic/j/a;

    invoke-virtual {v3, p0}, Lcom/jiliguala/niuwa/logic/j/a;->d(Landroid/app/Activity;)V

    .line 83
    :cond_1
    return v2

    .line 79
    .end local v2    # "isMeetsConditions":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/logic/j/a;->a(Landroid/app/Activity;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    sget-object v0, Lcom/jiliguala/niuwa/logic/j/a;->a:Lcom/jiliguala/niuwa/logic/j/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/j/a;->d()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/logic/j/a;->a(Landroid/app/Activity;Z)Z

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->m(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/logic/j/a;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->l(Landroid/content/Context;)J

    move-result-wide v0

    iget v2, p0, Lcom/jiliguala/niuwa/logic/j/a;->b:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/logic/j/a;->a(JI)Z

    move-result v0

    return v0
.end method

.method private j()Z
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->g(Landroid/content/Context;)J

    move-result-wide v0

    iget v2, p0, Lcom/jiliguala/niuwa/logic/j/a;->d:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/logic/j/a;->a(JI)Z

    move-result v0

    return v0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->h:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/jiliguala/niuwa/logic/j/a;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;Z)V

    .line 118
    return-object p0
.end method

.method public a(I)Lcom/jiliguala/niuwa/logic/j/a;
    .locals 0
    .param p1, "launchTimes"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/jiliguala/niuwa/logic/j/a;->c:I

    .line 88
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/jiliguala/niuwa/logic/j/a;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/j/a;->j:Landroid/view/View;

    .line 123
    return-object p0
.end method

.method public a(Lcom/jiliguala/niuwa/logic/j/c;)Lcom/jiliguala/niuwa/logic/j/a;
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/logic/j/c;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/j/a;->k:Lcom/jiliguala/niuwa/logic/j/c;

    .line 128
    return-object p0
.end method

.method public a(Z)Lcom/jiliguala/niuwa/logic/j/a;
    .locals 0
    .param p1, "isShowNeutralButton"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/logic/j/a;->g:Z

    .line 103
    return-object p0
.end method

.method public b(I)Lcom/jiliguala/niuwa/logic/j/a;
    .locals 0
    .param p1, "installDate"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/jiliguala/niuwa/logic/j/a;->b:I

    .line 93
    return-object p0
.end method

.method public b(Z)Lcom/jiliguala/niuwa/logic/j/a;
    .locals 0
    .param p1, "isShowTitle"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/logic/j/a;->f:Z

    .line 113
    return-object p0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->k(Landroid/content/Context;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/j/d;->m(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;I)V

    .line 136
    return-void
.end method

.method public c(I)Lcom/jiliguala/niuwa/logic/j/a;
    .locals 0
    .param p1, "remindInterval"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/jiliguala/niuwa/logic/j/a;->d:I

    .line 98
    return-object p0
.end method

.method public c(Z)Lcom/jiliguala/niuwa/logic/j/a;
    .locals 0
    .param p1, "isDebug"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/logic/j/a;->h:Z

    .line 211
    return-object p0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->o(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/jiliguala/niuwa/logic/j/a;->e:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)Lcom/jiliguala/niuwa/logic/j/a;
    .locals 0
    .param p1, "eventsTimes"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/jiliguala/niuwa/logic/j/a;->e:I

    .line 108
    return-object p0
.end method

.method public d(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/logic/j/a;->g:Z

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/logic/j/a;->f:Z

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/j/a;->k:Lcom/jiliguala/niuwa/logic/j/c;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/j/a;->j:Landroid/view/View;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/jiliguala/niuwa/logic/j/b;->a(Landroid/content/Context;ZZLcom/jiliguala/niuwa/logic/j/c;Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    .line 141
    .local v0, "dialog":Landroid/app/Dialog;
    new-instance v1, Lcom/jiliguala/niuwa/logic/j/a$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/logic/j/a$1;-><init>(Lcom/jiliguala/niuwa/logic/j/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    const-string v1, "REVIEW_DIALOG"

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->addDialogToChain(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 149
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 168
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/j/d;->e(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/j/d;->m(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v4

    .line 172
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 173
    .local v0, "currentTime":J
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/j/d;->l(Landroid/content/Context;)J

    move-result-wide v2

    .line 174
    .local v2, "installTime":J
    sub-long v6, v0, v2

    const-wide/32 v8, 0xf731400

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    move v4, v5

    .line 177
    goto :goto_0

    .end local v0    # "currentTime":J
    .end local v2    # "installTime":J
    :cond_2
    move v4, v5

    .line 181
    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->h(Landroid/content/Context;)V

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->k(Landroid/content/Context;)V

    .line 224
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;I)V

    .line 225
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->d(Landroid/content/Context;)V

    .line 226
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/j/d;->i(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/j/a;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/j/d;->m(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/j/d;->a(Landroid/content/Context;I)V

    .line 230
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 233
    invoke-static {}, Lcom/jiliguala/niuwa/logic/j/b;->a()V

    .line 234
    return-void
.end method
