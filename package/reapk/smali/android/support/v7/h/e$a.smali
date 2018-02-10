.class Landroid/support/v7/h/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/support/v7/h/e$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized a()Landroid/support/v7/h/e$b;
    .locals 2

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 241
    :goto_0
    monitor-exit p0

    return-object v0

    .line 239
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    .line 240
    .local v0, "next":Landroid/support/v7/h/e$b;
    iget-object v1, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    invoke-static {v1}, Landroid/support/v7/h/e$b;->a(Landroid/support/v7/h/e$b;)Landroid/support/v7/h/e$b;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    .end local v0    # "next":Landroid/support/v7/h/e$b;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized a(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 262
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    iget v3, v3, Landroid/support/v7/h/e$b;->a:I

    if-ne v3, p1, :cond_0

    .line 263
    iget-object v0, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    .line 264
    .local v0, "item":Landroid/support/v7/h/e$b;
    iget-object v3, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    invoke-static {v3}, Landroid/support/v7/h/e$b;->a(Landroid/support/v7/h/e$b;)Landroid/support/v7/h/e$b;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    .line 265
    invoke-virtual {v0}, Landroid/support/v7/h/e$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 262
    .end local v0    # "item":Landroid/support/v7/h/e$b;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 267
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    if-eqz v3, :cond_2

    .line 268
    iget-object v2, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    .line 269
    .local v2, "prev":Landroid/support/v7/h/e$b;
    invoke-static {v2}, Landroid/support/v7/h/e$b;->a(Landroid/support/v7/h/e$b;)Landroid/support/v7/h/e$b;

    move-result-object v0

    .line 270
    .restart local v0    # "item":Landroid/support/v7/h/e$b;
    :goto_1
    if-eqz v0, :cond_2

    .line 271
    invoke-static {v0}, Landroid/support/v7/h/e$b;->a(Landroid/support/v7/h/e$b;)Landroid/support/v7/h/e$b;

    move-result-object v1

    .line 272
    .local v1, "next":Landroid/support/v7/h/e$b;
    iget v3, v0, Landroid/support/v7/h/e$b;->a:I

    if-ne v3, p1, :cond_1

    .line 273
    invoke-static {v2, v1}, Landroid/support/v7/h/e$b;->a(Landroid/support/v7/h/e$b;Landroid/support/v7/h/e$b;)Landroid/support/v7/h/e$b;

    .line 274
    invoke-virtual {v0}, Landroid/support/v7/h/e$b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :goto_2
    move-object v0, v1

    .line 279
    goto :goto_1

    .line 276
    :cond_1
    move-object v2, v0

    goto :goto_2

    .line 281
    .end local v0    # "item":Landroid/support/v7/h/e$b;
    .end local v1    # "next":Landroid/support/v7/h/e$b;
    .end local v2    # "prev":Landroid/support/v7/h/e$b;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method declared-synchronized a(Landroid/support/v7/h/e$b;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/h/e$b;

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    invoke-static {p1, v0}, Landroid/support/v7/h/e$b;->a(Landroid/support/v7/h/e$b;Landroid/support/v7/h/e$b;)Landroid/support/v7/h/e$b;

    .line 246
    iput-object p1, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Landroid/support/v7/h/e$b;)V
    .locals 2
    .param p1, "item"    # Landroid/support/v7/h/e$b;

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    if-nez v1, :cond_0

    .line 251
    iput-object p1, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/h/e$a;->a:Landroid/support/v7/h/e$b;

    .line 255
    .local v0, "last":Landroid/support/v7/h/e$b;
    :goto_1
    invoke-static {v0}, Landroid/support/v7/h/e$b;->a(Landroid/support/v7/h/e$b;)Landroid/support/v7/h/e$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 256
    invoke-static {v0}, Landroid/support/v7/h/e$b;->a(Landroid/support/v7/h/e$b;)Landroid/support/v7/h/e$b;

    move-result-object v0

    goto :goto_1

    .line 258
    :cond_1
    invoke-static {v0, p1}, Landroid/support/v7/h/e$b;->a(Landroid/support/v7/h/e$b;Landroid/support/v7/h/e$b;)Landroid/support/v7/h/e$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
    .end local v0    # "last":Landroid/support/v7/h/e$b;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
