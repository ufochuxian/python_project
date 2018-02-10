.class final Lcom/squareup/wire/ProtoAdapter$15;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V
    .locals 0
    .param p1, "fieldEncoding"    # Lcom/squareup/wire/FieldEncoding;

    .prologue
    .line 311
    .local p2, "javaType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 313
    const/16 v0, 0x8

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
    .line 311
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$15;->b(Lcom/squareup/wire/d;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/squareup/wire/e;Ljava/lang/Long;)V
    .locals 2
    .param p1, "writer"    # Lcom/squareup/wire/e;
    .param p2, "value"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/e;->e(J)V

    .line 318
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
    .line 311
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/ProtoAdapter$15;->a(Lcom/squareup/wire/e;Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 311
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter$15;->a(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/squareup/wire/d;)Ljava/lang/Long;
    .locals 2
    .param p1, "reader"    # Lcom/squareup/wire/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/squareup/wire/d;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
