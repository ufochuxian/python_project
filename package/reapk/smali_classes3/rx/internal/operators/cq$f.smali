.class final Lrx/internal/operators/cq$f;
.super Lrx/internal/operators/cq$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/cq$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field final d:Lrx/h;

.field final e:J

.field final f:I


# direct methods
.method public constructor <init>(IJLrx/h;)V
    .locals 0
    .param p1, "limit"    # I
    .param p2, "maxAgeInMillis"    # J
    .param p4, "scheduler"    # Lrx/h;

    .prologue
    .line 1220
    .local p0, "this":Lrx/internal/operators/cq$f;, "Lrx/internal/operators/cq$f<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/cq$a;-><init>()V

    .line 1221
    iput-object p4, p0, Lrx/internal/operators/cq$f;->d:Lrx/h;

    .line 1222
    iput p1, p0, Lrx/internal/operators/cq$f;->f:I

    .line 1223
    iput-wide p2, p0, Lrx/internal/operators/cq$f;->e:J

    .line 1224
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1228
    .local p0, "this":Lrx/internal/operators/cq$f;, "Lrx/internal/operators/cq$f<TT;>;"
    new-instance v0, Lrx/schedulers/c;

    iget-object v1, p0, Lrx/internal/operators/cq$f;->d:Lrx/h;

    invoke-virtual {v1}, Lrx/h;->now()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lrx/schedulers/c;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1233
    .local p0, "this":Lrx/internal/operators/cq$f;, "Lrx/internal/operators/cq$f<TT;>;"
    check-cast p1, Lrx/schedulers/c;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lrx/schedulers/c;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method b()Lrx/internal/operators/cq$c;
    .locals 8

    .prologue
    .line 1238
    .local p0, "this":Lrx/internal/operators/cq$f;, "Lrx/internal/operators/cq$f<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/cq$f;->d:Lrx/h;

    invoke-virtual {v4}, Lrx/h;->now()J

    move-result-wide v4

    iget-wide v6, p0, Lrx/internal/operators/cq$f;->e:J

    sub-long v2, v4, v6

    .line 1239
    .local v2, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/cq$f;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/cq$c;

    .line 1241
    .local v1, "prev":Lrx/internal/operators/cq$c;
    invoke-virtual {v1}, Lrx/internal/operators/cq$c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/cq$c;

    .line 1242
    .local v0, "next":Lrx/internal/operators/cq$c;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v4, v0, Lrx/internal/operators/cq$c;->a:Ljava/lang/Object;

    check-cast v4, Lrx/schedulers/c;

    invoke-virtual {v4}, Lrx/schedulers/c;->a()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    .line 1243
    move-object v1, v0

    .line 1244
    invoke-virtual {v0}, Lrx/internal/operators/cq$c;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "next":Lrx/internal/operators/cq$c;
    check-cast v0, Lrx/internal/operators/cq$c;

    .restart local v0    # "next":Lrx/internal/operators/cq$c;
    goto :goto_0

    .line 1247
    :cond_0
    return-object v1
.end method

.method c()V
    .locals 10

    .prologue
    .line 1252
    .local p0, "this":Lrx/internal/operators/cq$f;, "Lrx/internal/operators/cq$f<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/cq$f;->d:Lrx/h;

    invoke-virtual {v6}, Lrx/h;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lrx/internal/operators/cq$f;->e:J

    sub-long v4, v6, v8

    .line 1254
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/cq$f;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/cq$c;

    .line 1255
    .local v2, "prev":Lrx/internal/operators/cq$c;
    invoke-virtual {v2}, Lrx/internal/operators/cq$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/cq$c;

    .line 1257
    .local v1, "next":Lrx/internal/operators/cq$c;
    const/4 v0, 0x0

    .line 1259
    .local v0, "e":I
    :goto_0
    if-eqz v1, :cond_1

    .line 1260
    iget v6, p0, Lrx/internal/operators/cq$f;->b:I

    iget v7, p0, Lrx/internal/operators/cq$f;->f:I

    if-le v6, v7, :cond_0

    .line 1261
    add-int/lit8 v0, v0, 0x1

    .line 1262
    iget v6, p0, Lrx/internal/operators/cq$f;->b:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/cq$f;->b:I

    .line 1263
    move-object v2, v1

    .line 1264
    invoke-virtual {v1}, Lrx/internal/operators/cq$c;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/cq$c;
    check-cast v1, Lrx/internal/operators/cq$c;

    .restart local v1    # "next":Lrx/internal/operators/cq$c;
    goto :goto_0

    .line 1266
    :cond_0
    iget-object v3, v1, Lrx/internal/operators/cq$c;->a:Ljava/lang/Object;

    check-cast v3, Lrx/schedulers/c;

    .line 1267
    .local v3, "v":Lrx/schedulers/c;, "Lrx/schedulers/c<*>;"
    invoke-virtual {v3}, Lrx/schedulers/c;->a()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_1

    .line 1268
    add-int/lit8 v0, v0, 0x1

    .line 1269
    iget v6, p0, Lrx/internal/operators/cq$f;->b:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/cq$f;->b:I

    .line 1270
    move-object v2, v1

    .line 1271
    invoke-virtual {v1}, Lrx/internal/operators/cq$c;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/cq$c;
    check-cast v1, Lrx/internal/operators/cq$c;

    .line 1275
    .restart local v1    # "next":Lrx/internal/operators/cq$c;
    goto :goto_0

    .line 1280
    .end local v3    # "v":Lrx/schedulers/c;, "Lrx/schedulers/c<*>;"
    :cond_1
    if-eqz v0, :cond_2

    .line 1281
    invoke-virtual {p0, v2}, Lrx/internal/operators/cq$f;->b(Lrx/internal/operators/cq$c;)V

    .line 1283
    :cond_2
    return-void
.end method

.method d()V
    .locals 10

    .prologue
    .line 1286
    .local p0, "this":Lrx/internal/operators/cq$f;, "Lrx/internal/operators/cq$f<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/cq$f;->d:Lrx/h;

    invoke-virtual {v6}, Lrx/h;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lrx/internal/operators/cq$f;->e:J

    sub-long v4, v6, v8

    .line 1288
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/cq$f;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/cq$c;

    .line 1289
    .local v2, "prev":Lrx/internal/operators/cq$c;
    invoke-virtual {v2}, Lrx/internal/operators/cq$c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/cq$c;

    .line 1291
    .local v1, "next":Lrx/internal/operators/cq$c;
    const/4 v0, 0x0

    .line 1293
    .local v0, "e":I
    :goto_0
    if-eqz v1, :cond_0

    iget v6, p0, Lrx/internal/operators/cq$f;->b:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 1294
    iget-object v3, v1, Lrx/internal/operators/cq$c;->a:Ljava/lang/Object;

    check-cast v3, Lrx/schedulers/c;

    .line 1295
    .local v3, "v":Lrx/schedulers/c;, "Lrx/schedulers/c<*>;"
    invoke-virtual {v3}, Lrx/schedulers/c;->a()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    .line 1296
    add-int/lit8 v0, v0, 0x1

    .line 1297
    iget v6, p0, Lrx/internal/operators/cq$f;->b:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/cq$f;->b:I

    .line 1298
    move-object v2, v1

    .line 1299
    invoke-virtual {v1}, Lrx/internal/operators/cq$c;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/cq$c;
    check-cast v1, Lrx/internal/operators/cq$c;

    .line 1303
    .restart local v1    # "next":Lrx/internal/operators/cq$c;
    goto :goto_0

    .line 1307
    .end local v3    # "v":Lrx/schedulers/c;, "Lrx/schedulers/c<*>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 1308
    invoke-virtual {p0, v2}, Lrx/internal/operators/cq$f;->b(Lrx/internal/operators/cq$c;)V

    .line 1310
    :cond_1
    return-void
.end method
