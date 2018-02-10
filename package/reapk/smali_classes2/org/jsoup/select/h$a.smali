.class Lorg/jsoup/select/h$a;
.super Lorg/jsoup/select/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/d;)V
    .locals 0
    .param p1, "evaluator"    # Lorg/jsoup/select/d;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/jsoup/select/h;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/jsoup/select/h$a;->a:Lorg/jsoup/select/d;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 3
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 23
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->D()Lorg/jsoup/select/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/select/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 24
    .local v0, "e":Lorg/jsoup/nodes/f;
    if-eq v0, p2, :cond_0

    iget-object v2, p0, Lorg/jsoup/select/h$a;->a:Lorg/jsoup/select/d;

    invoke-virtual {v2, p1, v0}, Lorg/jsoup/select/d;->a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const/4 v2, 0x1

    .line 27
    .end local v0    # "e":Lorg/jsoup/nodes/f;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    const-string v0, ":has(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/h$a;->a:Lorg/jsoup/select/d;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
