.class Lorg/jsoup/nodes/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/f;->E()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lorg/jsoup/nodes/f;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/f;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lorg/jsoup/nodes/f$1;->b:Lorg/jsoup/nodes/f;

    iput-object p2, p0, Lorg/jsoup/nodes/f$1;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/h;I)V
    .locals 4
    .param p1, "node"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    .line 821
    instance-of v2, p1, Lorg/jsoup/nodes/i;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 822
    check-cast v1, Lorg/jsoup/nodes/i;

    .line 823
    .local v1, "textNode":Lorg/jsoup/nodes/i;
    iget-object v2, p0, Lorg/jsoup/nodes/f$1;->a:Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lorg/jsoup/nodes/f;->a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/i;)V

    .line 831
    .end local v1    # "textNode":Lorg/jsoup/nodes/i;
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    instance-of v2, p1, Lorg/jsoup/nodes/f;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 825
    check-cast v0, Lorg/jsoup/nodes/f;

    .line 826
    .local v0, "element":Lorg/jsoup/nodes/f;
    iget-object v2, p0, Lorg/jsoup/nodes/f$1;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->o()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/f;)Lorg/jsoup/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/b/g;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lorg/jsoup/nodes/f$1;->a:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/nodes/i;->b(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 829
    iget-object v2, p0, Lorg/jsoup/nodes/f$1;->a:Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public b(Lorg/jsoup/nodes/h;I)V
    .locals 0
    .param p1, "node"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    .line 834
    return-void
.end method
