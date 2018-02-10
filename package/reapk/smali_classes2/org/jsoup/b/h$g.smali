.class abstract Lorg/jsoup/b/h$g;
.super Lorg/jsoup/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "g"
.end annotation


# instance fields
.field protected b:Ljava/lang/String;

.field c:Z

.field d:Lorg/jsoup/nodes/b;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/b/h;-><init>(Lorg/jsoup/b/h$1;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/b/h$g;->c:Z

    return-void
.end method

.method private final r()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jsoup/b/h$g;->f:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/b/h$g;->f:Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lorg/jsoup/b/h$g;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/jsoup/b/h$g;->b:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method a(C)V
    .locals 1
    .param p1, "append"    # C

    .prologue
    .line 105
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/b/h$g;->b(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method a([C)V
    .locals 1
    .param p1, "append"    # [C

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/jsoup/b/h$g;->r()V

    .line 128
    iget-object v0, p0, Lorg/jsoup/b/h$g;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 129
    return-void
.end method

.method b(C)V
    .locals 1
    .param p1, "append"    # C

    .prologue
    .line 113
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/b/h$g;->c(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jsoup/b/h$g;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .end local p1    # "append":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/jsoup/b/h$g;->b:Ljava/lang/String;

    .line 102
    return-void

    .line 101
    .restart local p1    # "append":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/jsoup/b/h$g;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method c(C)V
    .locals 1
    .param p1, "append"    # C

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/jsoup/b/h$g;->r()V

    .line 123
    iget-object v0, p0, Lorg/jsoup/b/h$g;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/jsoup/b/h$g;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .end local p1    # "append":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/jsoup/b/h$g;->e:Ljava/lang/String;

    .line 110
    return-void

    .line 109
    .restart local p1    # "append":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/jsoup/b/h$g;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 1
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/jsoup/b/h$g;->r()V

    .line 118
    iget-object v0, p0, Lorg/jsoup/b/h$g;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    return-void
.end method

.method m()V
    .locals 4

    .prologue
    .line 56
    iget-object v1, p0, Lorg/jsoup/b/h$g;->d:Lorg/jsoup/nodes/b;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lorg/jsoup/nodes/b;

    invoke-direct {v1}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v1, p0, Lorg/jsoup/b/h$g;->d:Lorg/jsoup/nodes/b;

    .line 59
    :cond_0
    iget-object v1, p0, Lorg/jsoup/b/h$g;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lorg/jsoup/b/h$g;->f:Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    .line 62
    new-instance v0, Lorg/jsoup/nodes/a;

    iget-object v1, p0, Lorg/jsoup/b/h$g;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v0, "attribute":Lorg/jsoup/nodes/a;
    :goto_0
    iget-object v1, p0, Lorg/jsoup/b/h$g;->d:Lorg/jsoup/nodes/b;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/a;)V

    .line 67
    .end local v0    # "attribute":Lorg/jsoup/nodes/a;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jsoup/b/h$g;->e:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lorg/jsoup/b/h$g;->f:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Lorg/jsoup/b/h$g;->f:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/b/h$g;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 70
    :cond_2
    return-void

    .line 64
    :cond_3
    new-instance v0, Lorg/jsoup/nodes/a;

    iget-object v1, p0, Lorg/jsoup/b/h$g;->e:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/b/h$g;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "attribute":Lorg/jsoup/nodes/a;
    goto :goto_0
.end method

.method n()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jsoup/b/h$g;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/jsoup/b/h$g;->m()V

    .line 78
    :cond_0
    return-void
.end method

.method o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jsoup/b/h$g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->b(Z)V

    .line 82
    iget-object v0, p0, Lorg/jsoup/b/h$g;->b:Ljava/lang/String;

    return-object v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method p()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/jsoup/b/h$g;->c:Z

    return v0
.end method

.method q()Lorg/jsoup/nodes/b;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jsoup/b/h$g;->d:Lorg/jsoup/nodes/b;

    return-object v0
.end method
