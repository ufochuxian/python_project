.class final Lcom/squareup/wire/ProtoAdapter$4;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V
    .locals 0
    .param p1, "fieldEncoding"    # Lcom/squareup/wire/FieldEncoding;

    .prologue
    .line 354
    .local p2, "javaType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/squareup/wire/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$4;->b(Lcom/squareup/wire/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/squareup/wire/e;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter$4;->a(Lcom/squareup/wire/e;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/squareup/wire/e;Ljava/lang/String;)V
    .locals 0
    .param p1, "writer"    # Lcom/squareup/wire/e;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p1, p2}, Lcom/squareup/wire/e;->b(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 354
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$4;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-static {p1}, Lcom/squareup/wire/e;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/squareup/wire/d;)Ljava/lang/String;
    .locals 1
    .param p1, "reader"    # Lcom/squareup/wire/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/squareup/wire/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
