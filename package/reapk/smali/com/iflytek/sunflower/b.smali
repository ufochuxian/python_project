.class Lcom/iflytek/sunflower/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/sunflower/a;


# direct methods
.method constructor <init>(Lcom/iflytek/sunflower/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sunflower/b;->b:Lcom/iflytek/sunflower/a;

    iput-object p2, p0, Lcom/iflytek/sunflower/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/iflytek/sunflower/a/e;

    iget-object v1, p0, Lcom/iflytek/sunflower/b;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/sunflower/a/e;-><init>(Ljava/lang/String;J)V

    sget-object v1, Lcom/iflytek/sunflower/f;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
