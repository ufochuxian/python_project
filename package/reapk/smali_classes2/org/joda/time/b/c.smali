.class public Lorg/joda/time/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/b/c$e;,
        Lorg/joda/time/b/c$b;,
        Lorg/joda/time/b/c$j;,
        Lorg/joda/time/b/c$k;,
        Lorg/joda/time/b/c$l;,
        Lorg/joda/time/b/c$d;,
        Lorg/joda/time/b/c$i;,
        Lorg/joda/time/b/c$m;,
        Lorg/joda/time/b/c$c;,
        Lorg/joda/time/b/c$g;,
        Lorg/joda/time/b/c$n;,
        Lorg/joda/time/b/c$f;,
        Lorg/joda/time/b/c$h;,
        Lorg/joda/time/b/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/b/c;->a:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method private a(Ljava/lang/Object;)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/b/c;->b:Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lorg/joda/time/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lorg/joda/time/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    return-object p0
.end method

.method static a(Ljava/io/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1195
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 1196
    const v0, 0xfffd

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1198
    :cond_0
    return-void
.end method

.method static a(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 1189
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 1190
    const v0, 0xfffd

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1192
    :cond_0
    return-void
.end method

.method private b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/b/c;->b:Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lorg/joda/time/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lorg/joda/time/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    return-object p0
.end method

.method private b(Lorg/joda/time/b/f;)V
    .locals 2

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No printer supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1165
    instance-of v0, p1, Lorg/joda/time/b/f;

    if-eqz v0, :cond_1

    .line 1166
    instance-of v0, p1, Lorg/joda/time/b/c$b;

    if-eqz v0, :cond_0

    .line 1167
    check-cast p1, Lorg/joda/time/b/c$b;

    invoke-virtual {p1}, Lorg/joda/time/b/c$b;->a()Z

    move-result v0

    .line 1171
    :goto_0
    return v0

    .line 1169
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lorg/joda/time/b/d;)V
    .locals 2

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parser supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1175
    instance-of v0, p1, Lorg/joda/time/b/d;

    if-eqz v0, :cond_1

    .line 1176
    instance-of v0, p1, Lorg/joda/time/b/c$b;

    if-eqz v0, :cond_0

    .line 1177
    check-cast p1, Lorg/joda/time/b/c$b;

    invoke-virtual {p1}, Lorg/joda/time/b/c$b;->b()Z

    move-result v0

    .line 1181
    :goto_0
    return v0

    .line 1179
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1185
    invoke-direct {p0, p1}, Lorg/joda/time/b/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/joda/time/b/c;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1138
    iget-object v0, p0, Lorg/joda/time/b/c;->b:Ljava/lang/Object;

    .line 1140
    if-nez v0, :cond_3

    .line 1141
    iget-object v1, p0, Lorg/joda/time/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1142
    iget-object v1, p0, Lorg/joda/time/b/c;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1143
    iget-object v2, p0, Lorg/joda/time/b/c;->a:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1145
    if-eqz v1, :cond_4

    .line 1146
    if-eq v1, v2, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 1154
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 1155
    new-instance v0, Lorg/joda/time/b/c$b;

    iget-object v1, p0, Lorg/joda/time/b/c;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/joda/time/b/c$b;-><init>(Ljava/util/List;)V

    .line 1158
    :cond_2
    iput-object v0, p0, Lorg/joda/time/b/c;->b:Ljava/lang/Object;

    .line 1161
    :cond_3
    return-object v0

    :cond_4
    move-object v0, v2

    .line 1150
    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/joda/time/b/b;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Lorg/joda/time/b/c;->q()Ljava/lang/Object;

    move-result-object v1

    .line 107
    invoke-direct {p0, v1}, Lorg/joda/time/b/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 108
    check-cast v0, Lorg/joda/time/b/f;

    .line 111
    :goto_0
    invoke-direct {p0, v1}, Lorg/joda/time/b/c;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    check-cast v1, Lorg/joda/time/b/d;

    .line 114
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    new-instance v2, Lorg/joda/time/b/b;

    invoke-direct {v2, v0, v1}, Lorg/joda/time/b/b;-><init>(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)V

    return-object v2

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Both printing and parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public a(C)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lorg/joda/time/b/c$a;

    invoke-direct {v0, p1}, Lorg/joda/time/b/c$a;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 665
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b/c;->c(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(IZ)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 869
    new-instance v0, Lorg/joda/time/b/c$m;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/b/c$m;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Literal must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 417
    new-instance v0, Lorg/joda/time/b/c$h;

    invoke-direct {v0, p1}, Lorg/joda/time/b/c$h;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object p0

    :goto_0
    :pswitch_0
    return-object p0

    .line 415
    :pswitch_1
    new-instance v0, Lorg/joda/time/b/c$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/joda/time/b/c$a;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object p0

    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZII)Lorg/joda/time/b/c;
    .locals 6

    .prologue
    .line 1118
    new-instance v0, Lorg/joda/time/b/c$l;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/b/c$l;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ZII)Lorg/joda/time/b/c;
    .locals 6

    .prologue
    .line 1091
    new-instance v0, Lorg/joda/time/b/c$l;

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/b/c$l;-><init>(Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;)Lorg/joda/time/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)",
            "Lorg/joda/time/b/c;"
        }
    .end annotation

    .prologue
    .line 1031
    new-instance v0, Lorg/joda/time/b/c$k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/joda/time/b/c$k;-><init>(ILjava/util/Map;)V

    .line 1032
    invoke-direct {p0, v0, v0}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    new-instance v0, Lorg/joda/time/b/c$i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/joda/time/b/c$i;-><init>(Lorg/joda/time/DateTimeFieldType;Z)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/b/c;
    .locals 3

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    if-gtz p2, :cond_1

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal number of digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    new-instance v0, Lorg/joda/time/b/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/b/c$c;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 434
    if-nez p1, :cond_0

    .line 435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 440
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 441
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 443
    :cond_3
    const/4 v0, 0x1

    if-gt p2, v0, :cond_4

    .line 444
    new-instance v0, Lorg/joda/time/b/c$n;

    invoke-direct {v0, p1, p3, v1}, Lorg/joda/time/b/c$n;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    .line 446
    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lorg/joda/time/b/c$g;

    invoke-direct {v0, p1, p3, v1, p2}, Lorg/joda/time/b/c$g;-><init>(Lorg/joda/time/DateTimeFieldType;IZI)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lorg/joda/time/b/b;)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No formatter supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/b/b;->b()Lorg/joda/time/b/f;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/b/b;->d()Lorg/joda/time/b/d;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/b/d;)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lorg/joda/time/b/c;->c(Lorg/joda/time/b/d;)V

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/b/f;)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;)V

    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;)V

    .line 277
    invoke-direct {p0, p2}, Lorg/joda/time/b/c;->c(Lorg/joda/time/b/d;)V

    .line 278
    invoke-direct {p0, p1, p2}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/b/f;[Lorg/joda/time/b/d;)Lorg/joda/time/b/c;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 305
    if-eqz p1, :cond_0

    .line 306
    invoke-direct {p0, p1}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;)V

    .line 308
    :cond_0
    if-nez p2, :cond_1

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parsers supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    array-length v1, p2

    .line 312
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 313
    aget-object v1, p2, v0

    if-nez v1, :cond_2

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parser supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_2
    aget-object v0, p2, v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 319
    :cond_3
    new-array v2, v1, [Lorg/joda/time/b/d;

    .line 321
    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_5

    .line 322
    aget-object v3, p2, v0

    aput-object v3, v2, v0

    if-nez v3, :cond_4

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incomplete parser array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    :cond_5
    aget-object v1, p2, v0

    aput-object v1, v2, v0

    .line 328
    new-instance v0, Lorg/joda/time/b/c$e;

    invoke-direct {v0, v2}, Lorg/joda/time/b/c$e;-><init>([Lorg/joda/time/b/d;)V

    invoke-direct {p0, p1, v0}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 675
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public b(II)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 614
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b/c;->c(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public b(IZ)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 909
    new-instance v0, Lorg/joda/time/b/c$m;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/joda/time/b/c$m;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lorg/joda/time/b/c;
    .locals 0

    .prologue
    .line 1132
    invoke-static {p0, p1}, Lorg/joda/time/b/a;->a(Lorg/joda/time/b/c;Ljava/lang/String;)V

    .line 1133
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lorg/joda/time/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)",
            "Lorg/joda/time/b/c;"
        }
    .end annotation

    .prologue
    .line 1057
    new-instance v0, Lorg/joda/time/b/c$k;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/joda/time/b/c$k;-><init>(ILjava/util/Map;)V

    .line 1058
    invoke-direct {p0, v0, v0}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    new-instance v0, Lorg/joda/time/b/c$i;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/joda/time/b/c$i;-><init>(Lorg/joda/time/DateTimeFieldType;Z)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/b/c;
    .locals 3

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    if-gtz p2, :cond_1

    .line 520
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal number of digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1
    new-instance v0, Lorg/joda/time/b/c$c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/b/c$c;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 486
    if-nez p1, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 492
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 493
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 495
    :cond_3
    if-gt p2, v1, :cond_4

    .line 496
    new-instance v0, Lorg/joda/time/b/c$n;

    invoke-direct {v0, p1, p3, v1}, Lorg/joda/time/b/c$n;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lorg/joda/time/b/c$g;

    invoke-direct {v0, p1, p3, v1, p2}, Lorg/joda/time/b/c$g;-><init>(Lorg/joda/time/DateTimeFieldType;IZI)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lorg/joda/time/b/d;)Lorg/joda/time/b/c;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-direct {p0, p1}, Lorg/joda/time/b/c;->c(Lorg/joda/time/b/d;)V

    .line 346
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/joda/time/b/d;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 347
    new-instance v1, Lorg/joda/time/b/c$e;

    invoke-direct {v1, v0}, Lorg/joda/time/b/c$e;-><init>([Lorg/joda/time/b/d;)V

    invoke-direct {p0, v2, v1}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/joda/time/b/f;
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/joda/time/b/c;->q()Ljava/lang/Object;

    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Lorg/joda/time/b/f;

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 685
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public c(II)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 631
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b/c;->c(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public c(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    if-ge p3, p2, :cond_1

    move p3, p2

    .line 576
    :cond_1
    if-ltz p2, :cond_2

    if-gtz p3, :cond_3

    .line 577
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 579
    :cond_3
    new-instance v0, Lorg/joda/time/b/c$d;

    invoke-direct {v0, p1, p2, p3}, Lorg/joda/time/b/c$d;-><init>(Lorg/joda/time/DateTimeFieldType;II)V

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->a(Ljava/lang/Object;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/joda/time/b/d;
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/joda/time/b/c;->q()Ljava/lang/Object;

    move-result-object v0

    .line 154
    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Lorg/joda/time/b/d;

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 695
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public d(II)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 648
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b/c;->c(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/joda/time/b/c;->q()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 705
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public e(II)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 807
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b/c;->b(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lorg/joda/time/b/c;->q()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 715
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public f(II)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 829
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b/c;->b(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/joda/time/b/c;->q()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/b/c;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 725
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public g(II)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 921
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/b/c;->b:Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lorg/joda/time/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    return-void
.end method

.method public h()Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 955
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->halfdayOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 735
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public h(II)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 933
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfCentury()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public i()Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 965
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 745
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public i(II)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 945
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->centuryOfEra()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/b/c;->b(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public j()Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 976
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b/c;->b(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public j(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 755
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public k()Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 987
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 765
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public l()Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 997
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b/c;->b(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public l(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 775
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public m()Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 1007
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public m(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 785
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public n()Lorg/joda/time/b/c;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1018
    new-instance v0, Lorg/joda/time/b/c$k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/joda/time/b/c$k;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v2}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public n(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 795
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public o()Lorg/joda/time/b/c;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1043
    new-instance v0, Lorg/joda/time/b/c$k;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/b/c$k;-><init>(ILjava/util/Map;)V

    invoke-direct {p0, v0, v2}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public o(I)Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 817
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/joda/time/b/c;->a(Lorg/joda/time/DateTimeFieldType;II)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public p()Lorg/joda/time/b/c;
    .locals 2

    .prologue
    .line 1068
    sget-object v0, Lorg/joda/time/b/c$j;->INSTANCE:Lorg/joda/time/b/c$j;

    sget-object v1, Lorg/joda/time/b/c$j;->INSTANCE:Lorg/joda/time/b/c$j;

    invoke-direct {p0, v0, v1}, Lorg/joda/time/b/c;->b(Lorg/joda/time/b/f;Lorg/joda/time/b/d;)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public p(I)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/b/c;->a(IZ)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method

.method public q(I)Lorg/joda/time/b/c;
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/b/c;->b(IZ)Lorg/joda/time/b/c;

    move-result-object v0

    return-object v0
.end method
