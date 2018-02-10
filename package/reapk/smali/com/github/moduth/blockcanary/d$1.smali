.class Lcom/github/moduth/blockcanary/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/moduth/blockcanary/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/moduth/blockcanary/d;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/d;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/d;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/github/moduth/blockcanary/d$1;->a:Lcom/github/moduth/blockcanary/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJJJ)V
    .locals 17
    .param p1, "realTimeStart"    # J
    .param p3, "realTimeEnd"    # J
    .param p5, "threadTimeStart"    # J
    .param p7, "threadTimeEnd"    # J

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/moduth/blockcanary/d$1;->a:Lcom/github/moduth/blockcanary/d;

    iget-object v5, v5, Lcom/github/moduth/blockcanary/d;->b:Lcom/github/moduth/blockcanary/n;

    .line 55
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/github/moduth/blockcanary/n;->a(JJ)Ljava/util/ArrayList;

    move-result-object v15

    .line 56
    .local v15, "threadStackEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 57
    invoke-static {}, Lcom/github/moduth/blockcanary/b/a;->a()Lcom/github/moduth/blockcanary/b/a;

    move-result-object v5

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    .line 58
    invoke-virtual/range {v5 .. v13}, Lcom/github/moduth/blockcanary/b/a;->a(JJJJ)Lcom/github/moduth/blockcanary/b/a;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/moduth/blockcanary/d$1;->a:Lcom/github/moduth/blockcanary/d;

    iget-object v6, v6, Lcom/github/moduth/blockcanary/d;->c:Lcom/github/moduth/blockcanary/g;

    .line 59
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/github/moduth/blockcanary/g;->a(JJ)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/moduth/blockcanary/b/a;->a(Z)Lcom/github/moduth/blockcanary/b/a;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/moduth/blockcanary/d$1;->a:Lcom/github/moduth/blockcanary/d;

    iget-object v6, v6, Lcom/github/moduth/blockcanary/d;->c:Lcom/github/moduth/blockcanary/g;

    .line 60
    invoke-virtual {v6}, Lcom/github/moduth/blockcanary/g;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/moduth/blockcanary/b/a;->a(Ljava/lang/String;)Lcom/github/moduth/blockcanary/b/a;

    move-result-object v5

    .line 61
    invoke-virtual {v5, v15}, Lcom/github/moduth/blockcanary/b/a;->a(Ljava/util/ArrayList;)Lcom/github/moduth/blockcanary/b/a;

    move-result-object v5

    .line 62
    invoke-virtual {v5}, Lcom/github/moduth/blockcanary/b/a;->b()Lcom/github/moduth/blockcanary/b/a;

    move-result-object v4

    .line 63
    .local v4, "blockInfo":Lcom/github/moduth/blockcanary/b/a;
    invoke-virtual {v4}, Lcom/github/moduth/blockcanary/b/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/github/moduth/blockcanary/j;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/moduth/blockcanary/d$1;->a:Lcom/github/moduth/blockcanary/d;

    invoke-static {v5}, Lcom/github/moduth/blockcanary/d;->a(Lcom/github/moduth/blockcanary/d;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/moduth/blockcanary/d$1;->a:Lcom/github/moduth/blockcanary/d;

    invoke-static {v5}, Lcom/github/moduth/blockcanary/d;->a(Lcom/github/moduth/blockcanary/d;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/moduth/blockcanary/e;

    .line 67
    .local v14, "interceptor":Lcom/github/moduth/blockcanary/e;
    invoke-static {}, Lcom/github/moduth/blockcanary/d;->b()Lcom/github/moduth/blockcanary/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/moduth/blockcanary/c;->b()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v14, v6, v4}, Lcom/github/moduth/blockcanary/e;->a(Landroid/content/Context;Lcom/github/moduth/blockcanary/b/a;)V

    goto :goto_0

    .line 71
    .end local v4    # "blockInfo":Lcom/github/moduth/blockcanary/b/a;
    .end local v14    # "interceptor":Lcom/github/moduth/blockcanary/e;
    :cond_0
    return-void
.end method
