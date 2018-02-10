.class public Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _id:Ljava/lang/String;

.field public ava:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public grpshare:Z

.field public nick:Ljava/lang/String;

.field public tag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->tag:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->grpshare:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->_id:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->nick:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->ava:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->city:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->tag:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 47
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "nick"    # Ljava/lang/String;
    .param p3, "ava"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->tag:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->_id:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->nick:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->ava:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 73
    instance-of v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;

    if-nez v1, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 79
    :goto_0
    return v1

    .line 75
    :cond_0
    if-ne p1, p0, :cond_1

    .line 76
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;

    .line 79
    .local v0, "rhs":Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;
    new-instance v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->_id:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->nick:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->ava:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->ava:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->city:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->city:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->_id:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->ava:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 66
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->grpshare:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->nick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->ava:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->tag:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 62
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
