.class public final Lorg/jsoup/select/d$d;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    .line 125
    iput-object p1, p0, Lorg/jsoup/select/d$d;->a:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 5
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 130
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->N()Lorg/jsoup/nodes/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->b()Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/a;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/a;

    .line 132
    .local v0, "attribute":Lorg/jsoup/nodes/a;
    invoke-virtual {v0}, Lorg/jsoup/nodes/a;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jsoup/select/d$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const/4 v3, 0x1

    .line 135
    .end local v0    # "attribute":Lorg/jsoup/nodes/a;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    const-string v0, "[^%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/d$d;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
