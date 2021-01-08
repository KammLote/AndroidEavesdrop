.class public final Lcom/google/android/gms/internal/zzaow;
.super Ljava/lang/Object;


# instance fields
.field private zzaiY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzapa;",
            ">;"
        }
    .end annotation
.end field

.field private zzaiZ:Ljava/lang/String;

.field private zzaja:Z

.field private zzajb:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzJ(Z)Lcom/google/android/gms/internal/zzaow;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaow;->zzaja:Z

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzapa;)Lcom/google/android/gms/internal/zzaow;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaow;->zzaiY:Ljava/util/List;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaow;->zzaiY:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaow;->zzaiY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public final zzb(Landroid/accounts/Account;)Lcom/google/android/gms/internal/zzaow;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaow;->zzajb:Landroid/accounts/Account;

    return-object p0
.end method

.method public final zzbG(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaow;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaow;->zzaiZ:Ljava/lang/String;

    return-object p0
.end method

.method public final zzmj()Lcom/google/android/gms/internal/zzaov;
    .locals 6

    new-instance v1, Lcom/google/android/gms/internal/zzaov;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaow;->zzaiZ:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzaow;->zzaja:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaow;->zzajb:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaow;->zzaiY:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaow;->zzaiY:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaow;->zzaiY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/zzapa;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzapa;

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzaov;-><init>(Ljava/lang/String;ZLandroid/accounts/Account;[Lcom/google/android/gms/internal/zzapa;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
