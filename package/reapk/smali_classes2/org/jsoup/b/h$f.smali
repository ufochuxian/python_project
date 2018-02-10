.class Lorg/jsoup/b/h$f;
.super Lorg/jsoup/b/h$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/jsoup/b/h$g;-><init>()V

    .line 140
    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v0, p0, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    .line 141
    sget-object v0, Lorg/jsoup/b/h$h;->StartTag:Lorg/jsoup/b/h$h;

    iput-object v0, p0, Lorg/jsoup/b/h$f;->a:Lorg/jsoup/b/h$h;

    .line 142
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/jsoup/b/h$f;-><init>()V

    .line 146
    iput-object p1, p0, Lorg/jsoup/b/h$f;->b:Ljava/lang/String;

    .line 147
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/jsoup/nodes/b;

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/jsoup/b/h$f;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/jsoup/b/h$f;->b:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    .line 153
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
