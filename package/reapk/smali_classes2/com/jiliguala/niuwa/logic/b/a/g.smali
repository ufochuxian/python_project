.class public Lcom/jiliguala/niuwa/logic/b/a/g;
.super Lcom/jiliguala/niuwa/logic/b/a/b;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZII)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "succeed"    # Z
    .param p3, "picType"    # I
    .param p4, "eventType"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/b/a/b;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/b/a/g;->b:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lcom/jiliguala/niuwa/logic/b/a/g;->c:Z

    .line 14
    iput p3, p0, Lcom/jiliguala/niuwa/logic/b/a/g;->d:I

    .line 15
    iput p4, p0, Lcom/jiliguala/niuwa/logic/b/a/g;->a:I

    .line 16
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/jiliguala/niuwa/logic/b/a/g;->d:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/b/a/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/b/a/g;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictureEvent{picUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/b/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", succeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/logic/b/a/g;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", picType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/logic/b/a/g;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
