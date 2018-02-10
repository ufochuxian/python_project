.class public Lorg/jsoup/nodes/e;
.super Lorg/jsoup/nodes/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p4}, Lorg/jsoup/nodes/h;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    .line 23
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/e;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 24
    const-string v0, "publicId"

    invoke-virtual {p0, v0, p2}, Lorg/jsoup/nodes/e;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 25
    const-string v0, "systemId"

    invoke-virtual {p0, v0, p3}, Lorg/jsoup/nodes/e;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "#doctype"

    return-object v0
.end method

.method a(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
    .locals 2
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 35
    const-string v0, "<!DOCTYPE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/e;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, "publicId"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/e;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, " PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "publicId"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/e;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_0
    const-string v0, "systemId"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/e;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "systemId"

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/e;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method

.method b(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$a;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$a;

    .prologue
    .line 45
    return-void
.end method
