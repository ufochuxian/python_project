.class Lcom/alibaba/mtl/log/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/mtl/log/a/b;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/log/a/b;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/mtl/log/a/b$a;->a:Lcom/alibaba/mtl/log/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-static {}, Lcom/alibaba/mtl/log/e/l;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v0

    .line 33
    :goto_1
    const/16 v0, 0x8

    if-ge v1, v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v2, "b01n15"

    invoke-static {v2}, Lcom/alibaba/mtl/log/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v3, "b01na"

    invoke-static {v3}, Lcom/alibaba/mtl/log/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    const-string v4, "_b01n15"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "_b01na"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/log/a/b;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/alibaba/mtl/log/e/t;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v2, "ConfigMgr"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/alibaba/mtl/log/e/e;->a(ILjava/lang/String;Ljava/util/Map;Z)Lcom/alibaba/mtl/log/e/e$a;

    move-result-object v0

    .line 47
    iget-object v2, v0, Lcom/alibaba/mtl/log/e/e$a;->b:[B

    if-eqz v2, :cond_2

    .line 48
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/mtl/log/e/e$a;->b:[B

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/alibaba/mtl/log/e/e$a;->b:[B

    array-length v0, v0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([BII)V

    .line 49
    invoke-static {v2}, Lcom/alibaba/mtl/log/a/a;->d(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :cond_2
    const-wide/16 v2, 0x2710

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    goto :goto_2
.end method
