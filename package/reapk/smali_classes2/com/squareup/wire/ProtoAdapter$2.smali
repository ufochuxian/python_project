.class final Lcom/squareup/wire/ProtoAdapter$2;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V
    .locals 0
    .param p1, "fieldEncoding"    # Lcom/squareup/wire/FieldEncoding;

    .prologue
    .line 326
    .local p2, "javaType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;

    .prologue
    .line 328
    const/4 v0, 0x4

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
    .line 326
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$2;->b(Lcom/squareup/wire/d;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/wire/e;Ljava/lang/Float;)V
    .locals 1
    .param p1, "writer"    # Lcom/squareup/wire/e;
    .param p2, "value"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/e;->h(I)V

    .line 333
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
    .line 326
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter$2;->a(Lcom/squareup/wire/e;Ljava/lang/Float;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 326
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$2;->a(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/squareup/wire/d;)Ljava/lang/Float;
    .locals 1
    .param p1, "reader"    # Lcom/squareup/wire/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/squareup/wire/d;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
