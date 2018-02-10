.class final enum Lorg/jsoup/b/k$23;
.super Lorg/jsoup/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/k;-><init>(Ljava/lang/String;ILorg/jsoup/b/k$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/j;Lorg/jsoup/b/a;)V
    .locals 2
    .param p1, "t"    # Lorg/jsoup/b/j;
    .param p2, "r"    # Lorg/jsoup/b/a;

    .prologue
    .line 45
    invoke-virtual {p2}, Lorg/jsoup/b/a;->c()C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 61
    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Lorg/jsoup/b/a;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/jsoup/b/j;->a(Ljava/lang/String;)V

    .line 65
    .end local v0    # "data":Ljava/lang/String;
    :goto_0
    return-void

    .line 47
    :sswitch_0
    sget-object v1, Lorg/jsoup/b/k$23;->CharacterReferenceInRcdata:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 50
    :sswitch_1
    sget-object v1, Lorg/jsoup/b/k$23;->RcdataLessthanSign:Lorg/jsoup/b/k;

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->b(Lorg/jsoup/b/k;)V

    goto :goto_0

    .line 53
    :sswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/b/j;->c(Lorg/jsoup/b/k;)V

    .line 54
    invoke-virtual {p2}, Lorg/jsoup/b/a;->f()V

    .line 55
    const v1, 0xfffd

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(C)V

    goto :goto_0

    .line 58
    :sswitch_3
    new-instance v1, Lorg/jsoup/b/h$d;

    invoke-direct {v1}, Lorg/jsoup/b/h$d;-><init>()V

    invoke-virtual {p1, v1}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/h;)V

    goto :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0xffff -> :sswitch_3
    .end sparse-switch

    .line 61
    :array_0
    .array-data 2
        0x26s
        0x3cs
        0x0s
    .end array-data
.end method
