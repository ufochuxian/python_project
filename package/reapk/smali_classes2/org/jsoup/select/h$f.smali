.class Lorg/jsoup/select/h$f;
.super Lorg/jsoup/select/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/d;)V
    .locals 0
    .param p1, "evaluator"    # Lorg/jsoup/select/d;

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/jsoup/select/h;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/jsoup/select/h$f;->a:Lorg/jsoup/select/d;

    .line 93
    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z
    .locals 3
    .param p1, "root"    # Lorg/jsoup/nodes/f;
    .param p2, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    const/4 v1, 0x0

    .line 96
    if-ne p1, p2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/nodes/f;->z()Lorg/jsoup/nodes/f;

    move-result-object v0

    .line 101
    .local v0, "prev":Lorg/jsoup/nodes/f;
    :goto_1
    if-eqz v0, :cond_0

    .line 102
    iget-object v2, p0, Lorg/jsoup/select/h$f;->a:Lorg/jsoup/select/d;

    invoke-virtual {v2, p1, v0}, Lorg/jsoup/select/d;->a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->z()Lorg/jsoup/nodes/f;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    const-string v0, ":prev*%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/select/h$f;->a:Lorg/jsoup/select/d;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
