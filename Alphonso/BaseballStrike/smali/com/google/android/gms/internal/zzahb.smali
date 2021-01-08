.class final Lcom/google/android/gms/internal/zzahb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaja;


# instance fields
.field private synthetic zzZz:Ljava/lang/String;

.field private synthetic zztH:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzagy;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzahb;->zztH:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahb;->zzZz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaN(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahb;->zztH:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzahb;->zzZz:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzagy;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
