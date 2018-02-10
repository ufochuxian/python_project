.class public Lcom/mob/tools/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/c/n$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mob/tools/c/n$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/c/n;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    invoke-virtual {v0}, Lcom/mob/tools/c/n$a;->a()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/c/n;->a(Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Lcom/mob/tools/c/n$a;

    iget-object v2, p0, Lcom/mob/tools/c/n;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/mob/tools/c/n$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    .line 36
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;F)V

    .line 72
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;J)V

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 79
    if-nez p2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 88
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 91
    .local v2, "data":[B
    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "base64":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/mob/tools/c/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "base64":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v4

    .line 94
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    invoke-virtual {v0, p1, p2}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "all":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    invoke-virtual {v0, p1}, Lcom/mob/tools/c/n$a;->a(Ljava/util/HashMap;)V

    .line 123
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    invoke-virtual {v0}, Lcom/mob/tools/c/n$a;->b()V

    .line 131
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 100
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mob/tools/c/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "base64":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v6

    .line 114
    .end local v1    # "base64":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 105
    .restart local v1    # "base64":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x2

    invoke-static {v1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 106
    .local v2, "data":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 107
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    .local v3, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 109
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "base64":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 112
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 114
    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mob/tools/c/n;->b:Lcom/mob/tools/c/n$a;

    invoke-virtual {v0, p1}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;)V

    .line 127
    return-void
.end method
