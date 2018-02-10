.class public final Lcom/jaredrummler/android/processes/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaredrummler/android/processes/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/jaredrummler/android/processes/models/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jaredrummler/android/processes/models/a;Lcom/jaredrummler/android/processes/models/a;)I
    .locals 2
    .param p1, "p1"    # Lcom/jaredrummler/android/processes/models/a;
    .param p2, "p2"    # Lcom/jaredrummler/android/processes/models/a;

    .prologue
    .line 205
    iget-object v0, p1, Lcom/jaredrummler/android/processes/models/a;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/jaredrummler/android/processes/models/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 201
    check-cast p1, Lcom/jaredrummler/android/processes/models/a;

    check-cast p2, Lcom/jaredrummler/android/processes/models/a;

    invoke-virtual {p0, p1, p2}, Lcom/jaredrummler/android/processes/b$a;->a(Lcom/jaredrummler/android/processes/models/a;Lcom/jaredrummler/android/processes/models/a;)I

    move-result v0

    return v0
.end method
