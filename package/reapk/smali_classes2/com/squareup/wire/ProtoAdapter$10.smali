.class final Lcom/squareup/wire/ProtoAdapter$10;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V
    .locals 0
    .param p1, "fieldEncoding"    # Lcom/squareup/wire/FieldEncoding;

    .prologue
    .line 236
    .local p2, "javaType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 238
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/e;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/e;->c(I)I

    move-result v0

    return v0
.end method

.method public synthetic a(Lcom/squareup/wire/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$10;->b(Lcom/squareup/wire/d;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/wire/e;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "writer"    # Lcom/squareup/wire/e;
    .param p2, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/e;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/e;->g(I)V

    .line 243
    return-void
.end method

.method public bridge synthetic a(Lcom/squareup/wire/e;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter$10;->a(Lcom/squareup/wire/e;Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 236
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$10;->a(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/squareup/wire/d;)Ljava/lang/Integer;
    .locals 1
    .param p1, "reader"    # Lcom/squareup/wire/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/squareup/wire/d;->g()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/e;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
