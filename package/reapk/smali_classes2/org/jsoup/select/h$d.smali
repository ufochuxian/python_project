.class Lorg/jsoup/select/h$d;
.super Lorg/jsoup/select/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/d;)V
    .locals 0
    .param p1, "evaluator"    # Lorg/jsoup/select/d;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/jsoup/select/h;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jsoup/select/h$d;->a:Lorg/jsoup/select/d;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 1
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "node"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jsoup/select/h$d;->a:Lorg/jsoup/select/d;

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/select/d;->a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string v0, ":not%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/h$d;->a:Lorg/jsoup/select/d;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
