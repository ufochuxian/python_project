.class Lcom/umeng/analytics/a/d$1;
.super Lu/aly/bc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/a/d;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/umeng/analytics/a/d;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/a/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/umeng/analytics/a/d$1;->b:Lcom/umeng/analytics/a/d;

    iput-object p2, p0, Lcom/umeng/analytics/a/d$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lu/aly/bc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/umeng/analytics/a/d$1;->b:Lcom/umeng/analytics/a/d;

    invoke-static {v0}, Lcom/umeng/analytics/a/d;->a(Lcom/umeng/analytics/a/d;)Lcom/umeng/analytics/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/a/c;->a(Ljava/lang/String;)Lcom/umeng/analytics/a/c$a;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/a/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/umeng/analytics/a/d$1;->b:Lcom/umeng/analytics/a/d;

    invoke-static {v1}, Lcom/umeng/analytics/a/d;->a(Lcom/umeng/analytics/a/d;)Lcom/umeng/analytics/a/c;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/analytics/a/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/a/d$1;->b:Lcom/umeng/analytics/a/d;

    invoke-static {v2}, Lcom/umeng/analytics/a/d;->a(Lcom/umeng/analytics/a/d;)Lcom/umeng/analytics/a/c;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/analytics/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/a/d$1;->b:Lcom/umeng/analytics/a/d;

    invoke-static {v1}, Lcom/umeng/analytics/a/d;->c(Lcom/umeng/analytics/a/d;)Lcom/umeng/analytics/c;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/analytics/a/d$1;->b:Lcom/umeng/analytics/a/d;

    invoke-static {v2}, Lcom/umeng/analytics/a/d;->b(Lcom/umeng/analytics/a/d;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "level"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 113
    return-void
.end method