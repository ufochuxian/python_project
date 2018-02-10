.class public Ljavax/jmdns/impl/f;
.super Ljavax/jmdns/impl/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/f$a;,
        Ljavax/jmdns/impl/f$g;,
        Ljavax/jmdns/impl/f$f;,
        Ljavax/jmdns/impl/f$e;,
        Ljavax/jmdns/impl/f$d;,
        Ljavax/jmdns/impl/f$c;,
        Ljavax/jmdns/impl/f$b;
    }
.end annotation


# static fields
.field private static b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Ljavax/jmdns/impl/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/f;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p3, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p4, "unique"    # Z

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/jmdns/impl/a;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    .line 221
    return-void
.end method

.method public static a(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/f;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljavax/jmdns/impl/constants/DNSRecordType;
    .param p2, "recordClass"    # Ljavax/jmdns/impl/constants/DNSRecordClass;
    .param p3, "unique"    # Z

    .prologue
    .line 237
    sget-object v0, Ljavax/jmdns/impl/f$1;->a:[I

    invoke-virtual {p1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 255
    new-instance v0, Ljavax/jmdns/impl/f;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/f;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    :goto_0
    return-object v0

    .line 239
    :pswitch_0
    new-instance v0, Ljavax/jmdns/impl/f$b;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/f$b;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    goto :goto_0

    .line 241
    :pswitch_1
    new-instance v0, Ljavax/jmdns/impl/f$c;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/f$c;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    goto :goto_0

    .line 243
    :pswitch_2
    new-instance v0, Ljavax/jmdns/impl/f$c;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/f$c;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    goto :goto_0

    .line 245
    :pswitch_3
    new-instance v0, Ljavax/jmdns/impl/f$a;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/f$a;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    goto :goto_0

    .line 247
    :pswitch_4
    new-instance v0, Ljavax/jmdns/impl/f$d;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/f$d;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    goto :goto_0

    .line 249
    :pswitch_5
    new-instance v0, Ljavax/jmdns/impl/f$e;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/f$e;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    goto :goto_0

    .line 251
    :pswitch_6
    new-instance v0, Ljavax/jmdns/impl/f$f;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/f$f;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    goto :goto_0

    .line 253
    :pswitch_7
    new-instance v0, Ljavax/jmdns/impl/f$g;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/jmdns/impl/f$g;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)V

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "aLog"    # Ljava/lang/StringBuilder;

    .prologue
    .line 326
    return-void
.end method

.method public a(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;)V
    .locals 0
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/JmDNSImpl;",
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/impl/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p2, "answers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/g;>;"
    return-void
.end method

.method protected a(Ljavax/jmdns/impl/JmDNSImpl;Ljava/util/Set;Ljavax/jmdns/impl/m;)V
    .locals 4
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;
    .param p3, "info"    # Ljavax/jmdns/impl/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/JmDNSImpl;",
            "Ljava/util/Set",
            "<",
            "Ljavax/jmdns/impl/g;",
            ">;",
            "Ljavax/jmdns/impl/m;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "answers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/jmdns/impl/g;>;"
    const/16 v3, 0xe10

    const/4 v2, 0x1

    .line 279
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljavax/jmdns/impl/m;->isAnnounced()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {p0}, Ljavax/jmdns/impl/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljavax/jmdns/impl/m;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljavax/jmdns/impl/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljavax/jmdns/impl/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/f;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Ljavax/jmdns/impl/i;->a(Ljavax/jmdns/impl/constants/DNSRecordClass;ZI)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 282
    invoke-virtual {p0}, Ljavax/jmdns/impl/f;->f()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->s()Ljavax/jmdns/impl/i;

    move-result-object v1

    invoke-virtual {p3, v0, v2, v3, v1}, Ljavax/jmdns/impl/m;->a(Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjavax/jmdns/impl/i;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 284
    :cond_1
    sget-object v0, Ljavax/jmdns/impl/f;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    sget-object v0, Ljavax/jmdns/impl/f;->b:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavax/jmdns/impl/JmDNSImpl;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DNSQuestion("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").addAnswersForServiceInfo(): info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 288
    :cond_2
    return-void
.end method

.method public a(J)Z
    .locals 1
    .param p1, "now"    # J

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljavax/jmdns/impl/JmDNSImpl;)Z
    .locals 1
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public b(J)Z
    .locals 1
    .param p1, "now"    # J

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method f(Ljavax/jmdns/impl/a;)Z
    .locals 2
    .param p1, "rec"    # Ljavax/jmdns/impl/a;

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/f;->c(Ljavax/jmdns/impl/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/f;->d(Ljavax/jmdns/impl/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
