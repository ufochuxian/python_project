.class Lorg/xbill/DNS/au$a;
.super Lorg/xbill/DNS/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "Type"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    .line 207
    const-string v0, "TYPE"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/au$a;->a(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/au$a;->d:Ljava/util/HashMap;

    .line 209
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 219
    invoke-static {p1}, Lorg/xbill/DNS/au;->a(I)V

    .line 220
    return-void
.end method

.method public a(ILjava/lang/String;Lorg/xbill/DNS/Record;)V
    .locals 2
    .param p1, "val"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "proto"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 214
    iget-object v0, p0, Lorg/xbill/DNS/au$a;->d:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/xbill/DNS/w;->c(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public e(I)Lorg/xbill/DNS/Record;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/au$a;->a(I)V

    .line 225
    iget-object v0, p0, Lorg/xbill/DNS/au$a;->d:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/xbill/DNS/au$a;->c(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    return-object v0
.end method
